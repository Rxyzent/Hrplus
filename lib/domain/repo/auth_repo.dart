abstract class AuthRepo {
  Future<String> login({required String phoneNumber,required String password});

  Future<bool> singIn({required String phoneNumber});

  Future<void> updateFcmToken();
}