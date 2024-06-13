import 'package:dio/dio.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthApi {
  AuthApi(this._dio, this._storage);

  final Dio _dio;
  final Storage _storage;

  Future<Response> login(String phoneNumber, String password) {
    final deviceId = _storage.deviceId.call();
    final request = {
      'phone': phoneNumber,
      'password': password,
      'mobile_id': deviceId,
    };
    return _dio.post('manager-login', data: request);
  }

  Future<Response> signIn(String phoneNumber) {
    final deviceId = _storage.deviceId.call();
    final request = {
      'phone': phoneNumber,
      'mobile_id': deviceId,
    };
    return _dio.post('manager-auth', data: request);
  }

  Future<Response> updateFcmToken() async {
    final deviceId = _storage.deviceId.call();
    final fcmToken = _storage.fcmToken.call();
    final request = {
      'mobile_id': deviceId,
      'fcm_token': fcmToken,
    };
    return _dio.post('update-fcm-token', data: request);
  }
}
