import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/common/utils/geolocator.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:hrplus/domain/model/user/user_model.dart';
import 'package:hrplus/domain/repo/home_repo.dart';
import 'package:hrplus/presentation/home/background_service/background_service.dart';
import 'package:hrplus/presentation/home/home/cubit/home_state.dart';
import 'package:hrplus/presentation/home/home/widgets/attendance_chart.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends BaseCubit<HomeBuildable, HomeListenable> {
  HomeCubit(this._repo, this._locationService, this._storage)
      : super(const HomeBuildable()) {
    _init();
    initializeService();
  }

  final HomeRepo _repo;
  final LocationService _locationService;
  final Storage _storage;

  void _init() async {
    _getAddress();
    _getNotifNumber();
    await _getUserInfo();
    _refreshUserData();
  }

  void changeButtonState(bool state) {
    build((buildable) => buildable.copyWith(animate: state));
  }

  void _refreshUserData() {
    final user = _storage.userData.call();
    if (user == null) {
      _storage.userData.set(UserModel(
        fullName: buildable.userInfo!.name,
        image: buildable.userInfo!.image,
        phoneNumber: buildable.userInfo!.phone,
        profileUrl: buildable.userInfo!.profileUrl,
        isTablet: buildable.userInfo!.isForPlanshet,
        liveLocation: false,
      ));
    } else {
      final newUser = user.copyWith(
        fullName: buildable.userInfo!.name,
        image: buildable.userInfo!.image,
        phoneNumber: buildable.userInfo!.phone,
        profileUrl: buildable.userInfo!.profileUrl,
        isTablet: buildable.userInfo!.isForPlanshet,
      );
      _storage.userData.set(newUser);
      build((buildable) => buildable.copyWith(animate: user.liveLocation));
    }
  }

  Future<void> refresh() async {
    _getAddress();
    _getNotifNumber();
    _getUserInfo();
  }

  void _getNotifNumber() => callable(
        future: _repo.getNotifNumber(),
        buildOnData: (notifNumber) =>
            buildable.copyWith(notifNumber: notifNumber),
      );

  Future<void> _getUserInfo() => callable(
        future: _repo.getUserInfo(),
        buildOnStart: () => buildable.copyWith(loading: true, error: false),
        buildOnError: (error) => buildable.copyWith(error: true),
        buildOnData: (userInfo) => buildable.copyWith(userInfo: userInfo),
        buildOnDone: () => buildable.copyWith(loading: false),
      );

  void setSingleChartData (SingleChartData data){
    if(data.x == buildable.singleChartData?.x){
      build((buildable) => buildable.copyWith(singleChartData: null));
    }else{
      build((buildable) => buildable.copyWith(singleChartData: data));
    }
  }

  void _getAddress() async {
    final currentLocation = await _locationService.getCurrentLocation();
    if (currentLocation != null) {
      final currentAddress = await _locationService.getAddress(
          currentLocation.latitude, currentLocation.longitude);
      build((buildable) => buildable.copyWith(address: currentAddress));
    }
  }
}
