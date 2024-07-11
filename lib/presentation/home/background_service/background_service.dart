import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hrplus/common/constants/constants.dart';
import 'package:hrplus/domain/model/dio_interceptor/dio_interceptor.dart';
import 'package:hrplus/domain/model/position/location_list.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const channelId = 'location_service';
const channelName = 'Location Service';
const channelDescription = 'This channel is used for location tracking.';

void startService() {
  FlutterBackgroundService().startService();
}

void stopService() {
  FlutterBackgroundService().invoke('stopService');
}

Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    channelId,
    channelName,
    description: channelDescription,
    importance: Importance.max,
  );

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  if (Platform.isIOS || Platform.isAndroid) {
    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        iOS: DarwinInitializationSettings(),
        android: AndroidInitializationSettings('ic_notification'),
      ),
    );
  }

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: false,
      isForegroundMode: true,
      notificationChannelId: channelId,
      initialNotificationTitle: 'Hrplus',
      initialNotificationContent: 'Tracking location in background',
      //foregroundServiceNotificationId: 888,
    ),
    iosConfiguration: IosConfiguration(
      autoStart: false,
      onForeground: onStart,
    ),
  );
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  // Request permissions
  initializePermissions();

  // Track location and send updates
  final storage = await Storage.create();
  final dio = Dio();
  dio.options.baseUrl = Constants.baseUrl;
  dio.interceptors.add(DioInterceptor(storage));
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: kDebugMode,
      requestBody: kDebugMode,
      responseBody: kDebugMode,
      responseHeader: kDebugMode,
      error: kDebugMode,
      compact: true,
      maxWidth: 90,
    ),
  );
  final List<Location> location = [];
  Timer.periodic(const Duration(seconds: 10), (callback) async{
    bool isLocationEnabled =
        await Geolocator.isLocationServiceEnabled();
    if(isLocationEnabled){
      final connection = await Connectivity().checkConnectivity();
      final date = DateTime.now();
      final position = await Geolocator.getCurrentPosition();
      if(connection == ConnectivityResult.none){
        location.add(Location(lat: position.latitude,lon: position.longitude,date: date.millisecondsSinceEpoch));
      }else{
        sendLocationList(location, storage, dio);
        location.clear();
        sendLocation(position.latitude, position.longitude, storage, dio);
      }
    }else{
      bool serviceEnabled = await Geolocator.openLocationSettings();
      if(serviceEnabled){
        await Future.delayed(const Duration(seconds: 5));
        bool isLocationEnabled =
        await Geolocator.isLocationServiceEnabled();
        if(!isLocationEnabled){
          final user = storage.userData.call();
          final deviceId = storage.deviceId.call();
          final newUser = user?.copyWith(liveLocation: false);
          storage.userData.set(newUser);
          await dio.post('stop-live-location',data: {'mobile_id':deviceId});
          service.stopSelf();
        }
      }
    }
  });

}

LocationSettings get locationSettings {
  if (defaultTargetPlatform == TargetPlatform.android) {
    return AndroidSettings(intervalDuration: const Duration(seconds: 10));
  }
  if (defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.macOS) {
    return AppleSettings(
      showBackgroundLocationIndicator: true,
    );
  }
  return const LocationSettings(accuracy: LocationAccuracy.high);
}

Future<void> initializePermissions() async {
  if (Platform.isIOS) {
    bool serviceEnabled;

    serviceEnabled = await Permission.location.serviceStatus.isEnabled;
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    if (await Permission.location.isDenied) {
      final location = await Permission.location.request();
      if (location.isDenied) {
        return Future.error('Location permissions are denied');
      }
      await Permission.locationAlways.request();
    }

    if (await Permission.location.isPermanentlyDenied) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions();
  }

  if (Platform.isAndroid) {
    bool serviceEnabled;

    serviceEnabled = await Permission.location.serviceStatus.isEnabled;
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    if (await Permission.location.isDenied) {
      final location = await Permission.location.request();
      if (location.isDenied) {
        return Future.error('Location permissions are denied');
      }
      await Permission.locationAlways.request();
    }

    if (await Permission.location.isPermanentlyDenied) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }
}

Future<void> sendLocationList(List<Location> location, Storage storage, Dio dio) async {

  final deviceId = storage.deviceId();
  List<Map<String, dynamic>> locationsJson = location.map((location) => location.toJson()).toList();
  final request = {
    'mobile_id': deviceId,
    'location':locationsJson,
  };
  await dio.post('post-live-location-data-arch',data: request);
}

Future<void> sendLocation(
    double latitude, double longitude, Storage storage, Dio dio) async {
  final deviceId = storage.deviceId();
  final request = {
    'mobile_id': deviceId,
    'location': {
      'lon': longitude,
      'lat': latitude,
    }
  };
  await dio.post('post-live-location-data', data: request);
}
