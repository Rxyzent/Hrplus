import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:hrplus/domain/repo/home_repo.dart';
import 'package:hrplus/presentation/home/background_service/background_service.dart';
import 'package:hrplus/presentation/home/home/cubit/home_cubit.dart';
import 'package:hrplus/presentation/home/home/location_sheet/cubit/location_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocationCubit extends BaseCubit<LocationBuildable, LocationListenable> {
  LocationCubit(this._storage, this._repo) : super(const LocationBuildable()) {
    _init();
  }

  final Storage _storage;
  final HomeRepo _repo;

  void _init() {
    final locationState = _storage.userData.call()?.liveLocation ?? false;
    build((buildable) => buildable.copyWith(locationState: locationState));
  }

  Future<void> changeLiveLocationState(BuildContext context) => callable(
        future: buildable.locationState
            ? _repo.stopLiveLocation()
            : _repo.startLiveLocation(),
        buildOnStart: () => buildable.copyWith(loading: true),
        buildOnDone: () {
          final userInfo = _storage.userData.call();
          final newUserInfo =
              userInfo?.copyWith(liveLocation: !buildable.locationState);
          _storage.userData.set(newUserInfo);
          buildable.locationState ? stopService() : startService();
          context.read<HomeCubit>().changeButtonState(!buildable.locationState);
          return buildable.copyWith(locationState: !buildable.locationState,loading: false);
        },
      );
}
