import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:hrplus/domain/repo/profile_repo.dart';
import 'package:hrplus/presentation/profile/cubit/profile_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileBuildable, ProfileListenable> {
  ProfileCubit(this._repo, this._storage) : super(const ProfileBuildable()) {
    _init();
  }

  final ProfileRepo _repo;
  final Storage _storage;

  void _init() {
    final user = _storage.userData.call();
    final themeMode = _storage.theme.call();
    final isTabletMode = user?.isTablet;
    build((buildable) => buildable.copyWith(
          isTabletMode: isTabletMode ?? buildable.isTabletMode,
          image: user!.image!,
          name: user.fullName!,
          phone: '+998 ${user.phoneNumber!}',
          profileUrl: user.profileUrl!,
          themeState: themeMode ?? true,
          loading: false,
        ));
  }

  void changeNotification(bool value) {
    final status = value ? 1 : 0;
    callable(
      future: _repo.changeNotifStatus(status),
      buildOnDone: () => buildable.copyWith(notificationState: value),
    );
  }

  void changeTheme(bool value) {
    build((buildable) => buildable.copyWith(themeState: value));
  }

  void logout() {
    callable(
        future: _repo.logout(),
        invokeOnDone: () =>
            const ProfileListenable(effect: ProfileEffect.logout),
        buildOnDone: () {
          _storage.token.set(null);
          return buildable.copyWith();
        });
  }
}
