import 'package:dio/dio.dart';
import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/photo/photo.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class CameraApi {
  CameraApi(this._dio, this._storage);

  final Dio _dio;
  final Storage _storage;

  Future<Response> createComeInGetOut(String type, Location location) {
    final deviceId = _storage.deviceId.call();
    final request = {
      'mobile_id': deviceId,
      'type': type,
      'location': {
        'lat': location.lat,
        'lon': location.lon,
      }
    };
    return _dio.post('create-comein-getout',data: request);
  }

  Future<Response> saveManagerPhoto(Photo photo) {
    final deviceId = _storage.deviceId.call();
    final request = {
      'mobile_id': deviceId,
      'photo': {
        'base64': photo.base64,
        'type': photo.type,
      }
    };
    return _dio.post('save-manager-photo',data: request);
  }
}
