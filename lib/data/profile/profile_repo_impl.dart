
import 'package:hrplus/data/profile/profile_api.dart';
import 'package:hrplus/domain/repo/profile_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepo)
class ProfileRepositoryImpl extends ProfileRepo{
  ProfileRepositoryImpl(this._api);

  final ProfileApi _api;

  @override
  Future<void> changeLanguage(String language) async{
    await _api.changeLanguage(language);
  }

  @override
  Future<void> changeNotifStatus(int status) async{
    await _api.changeNotifStatus(status);
  }

  @override
  Future<void> logout() async{
    await _api.logout();
  }

}