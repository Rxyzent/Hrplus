import 'package:hrplus/data/auth/auth_api.dart';
import 'package:hrplus/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl(this._api);

  final AuthApi _api;

  @override
  Future<String> login({required String phoneNumber, required String password}) async {
    final request = await _api.login(phoneNumber, password);
    return request.data['message'];
  }

  @override
  Future<bool> singIn({required String phoneNumber}) async{
    final response = await _api.signIn(phoneNumber);
    if(response.data['message'] == 'User found'){
      return true;
    }else{
      return false;
    }
  }

  @override
  Future<void> updateFcmToken() async{
    await _api.updateFcmToken();
  }
}
