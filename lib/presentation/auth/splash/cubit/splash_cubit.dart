import 'dart:async';

import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:hrplus/domain/repo/auth_repo.dart';
import 'package:hrplus/presentation/auth/splash/cubit/splash_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit(this._storage, this._repo) : super(const SplashBuildable()){
    _init();
  }

  final Storage _storage;
  final AuthRepo _repo;

  void _init() async{
    final token = _storage.token.call();
    final oldFcmToken = _storage.fcmToken.call();
    final messaging = FirebaseMessaging.instance;
    final installationId = await FirebaseInstallations.instance.getId();
    final newFcmToken = await messaging.getToken();
   // _storage.deviceId.set(installationId);
    if(oldFcmToken == null){
      _storage.fcmToken.set(newFcmToken);
    }else if(newFcmToken != oldFcmToken){
      _storage.fcmToken.set(newFcmToken);
      _updateFcmToken();
    }
    Timer(
      const Duration(milliseconds: 300),
          () {
        if (token != null) {
          invoke(const SplashListenable(effect: SplashEffect.home));
        } else {
          invoke(const SplashListenable(effect: SplashEffect.login));
        }
      },
    );
  }

  void _updateFcmToken() {
    callable(future: _repo.updateFcmToken());
  }
}
