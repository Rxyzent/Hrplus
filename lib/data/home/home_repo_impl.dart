import 'dart:convert';

import 'package:hrplus/data/home/home_api.dart';
import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/user_info/user_info.dart';
import 'package:hrplus/domain/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepositoryImpl extends HomeRepo {
  HomeRepositoryImpl(this._api);

  final HomeApi _api;

  @override
  Future<int> getNotifNumber() async{
    final response = await _api.getNotifNumber();
    return response.data['data'];
  }

  @override
  Future<UserInfo> getUserInfo() async{
    final response = await _api.getUserInfo();
    return UserInfo.fromJson(response.data);
  }

  @override
  Future<void> postLiveLocation(Location location) {
    // TODO: implement postLiveLocation
    throw UnimplementedError();
  }

  @override
  Future<void> startLiveLocation() async {
    await _api.startLiveLocation();
  }

  @override
  Future<void> stopLiveLocation() async {
    await _api.stopLiveLocation();
  }
}
