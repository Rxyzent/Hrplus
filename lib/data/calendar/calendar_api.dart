import 'package:dio/dio.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class CalendarApi {
  CalendarApi(this._dio, this._storage);

  final Dio _dio;
  final Storage _storage;

  Future<Response> getDailyData(String date) {
    final deviceId = _storage.deviceId.call();
    final request = {
      'mobile_id': deviceId,
      'date': date,
    };
    return _dio.post('get-comein-getout-with-date',data: request);
  }
}