
import 'package:dio/dio.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileApi {
  ProfileApi(this._dio, this._storage);

  final Dio _dio;
  final Storage _storage;

  Future<Response> changeNotifStatus(int status){
    final deviceId = _storage.deviceId.call();
    final request = {'notif_status':status,'mobile_id':deviceId,};
    return _dio.put('change-notif-status',data: request);
  }
  
  Future<Response> logout(){
    final deviceId = _storage.deviceId.call();
    final body = {'mobile_id':deviceId};
    return _dio.post('manager-logout',data: body);
  }

  Future<Response> changeLanguage(String language){
    final deviceId = _storage.deviceId.call();
    final request = {'lang':language,'mobile_id':deviceId};
    return _dio.post('change-language',data: request);
  }
}