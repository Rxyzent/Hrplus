import 'package:dio/dio.dart';
import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeApi {
  HomeApi(this._dio, this._storage);

  final Dio _dio;
  final Storage _storage;

  Future<Response> startLiveLocation() async {
    final deviceId = _storage.deviceId.call();
    final request = {'mobile_id': deviceId};
    return _dio.post('start-live-location', data: request);
  }

  Future<Response> stopLiveLocation() async {
    final deviceId = _storage.deviceId.call();
    final request = {'mobile_id': deviceId};
    return _dio.post('stop-live-location', data: request);
  }

  Future<Response> getNotifNumber() async {
    final deviceId = _storage.deviceId.call();
    final request = {'mobile_id': deviceId};
    return _dio.post('get-notifs-number', data: request);
  }

  Future<Response> getUserInfo() async {
    final deviceId = _storage.deviceId.call();
    final request = {'mobile_id': deviceId};
    return _dio.post('get-user-info', data: request);
  }

  Future<Response> postLiveLocation(Location location) async {
    final deviceId = _storage.deviceId.call();
    final request = {
      'mobile_id': deviceId,
      'location': {
        'lon': location.lon,
        'lat': location.lat,
      }
    };
    return _dio.post('post-live-location-data',data: request);
  }
}
