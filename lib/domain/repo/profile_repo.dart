abstract class ProfileRepo {

  Future<void> changeNotifStatus(int status);

  Future<void> changeLanguage(String language);

  Future<void> logout();

}