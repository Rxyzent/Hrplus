import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/user_info/user_info.dart';

abstract class HomeRepo {

  Future<void> startLiveLocation();

  Future<void> stopLiveLocation();

  Future<UserInfo> getUserInfo();

  Future<int> getNotifNumber();

  Future<void> postLiveLocation(Location location);

}