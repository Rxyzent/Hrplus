import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocationService {
  final GeolocatorPlatform _geolocator = GeolocatorPlatform.instance;

  Future<bool> _isLocationServiceEnabled() async {
    return await _geolocator.isLocationServiceEnabled();
  }

  Future<LocationPermission> _checkLocationPermission() async {
    return await _geolocator.checkPermission();
  }

  Future<void> _getLocationPermission() async {
    LocationPermission permission = await _checkLocationPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocator.requestPermission();
       if (permission == LocationPermission.denied) {
        throw PlatformException(
          code: 'LOCATION_PERMISSION_DENIED',
          message: 'Location permission denied.',
        );
      }
    }
  }

  Future<Position?> getCurrentLocation() async {
    try {
      await _getLocationPermission();
      bool serviceEnabled = await _isLocationServiceEnabled();
      if (!serviceEnabled) {
        _geolocator.openLocationSettings();
      }
      final currentPosition =  await _geolocator.getCurrentPosition(
          locationSettings:
              const LocationSettings(accuracy: LocationAccuracy.best));
      return currentPosition;
    } on PlatformException catch (e) {
      print('Error getting current location: $e');
      return null;
    }
  }

  Future<String?> getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks.first;
        return '${placemark.locality}, ${placemark.subLocality}';
      } else {
        return null;
      }
    } on PlatformException catch (e) {
      print('Error getting address: $e');
      return null;
    }
  }
}
