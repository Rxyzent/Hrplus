// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hrplus/common/di/app_module.dart' as _i39;
import 'package:hrplus/common/di/network_module.dart' as _i40;
import 'package:hrplus/common/utils/geolocator.dart' as _i3;
import 'package:hrplus/common/widgets/display/display.dart' as _i10;
import 'package:hrplus/common/widgets/display/display_impl.dart' as _i11;
import 'package:hrplus/data/auth/auth_api.dart' as _i17;
import 'package:hrplus/data/auth/auth_repo_impl.dart' as _i29;
import 'package:hrplus/data/calendar/calendar_api.dart' as _i18;
import 'package:hrplus/data/calendar/calendar_repo_impl.dart' as _i32;
import 'package:hrplus/data/camera/camera_api.dart' as _i19;
import 'package:hrplus/data/camera/camera_repo_impl.dart' as _i26;
import 'package:hrplus/data/home/home_api.dart' as _i20;
import 'package:hrplus/data/home/home_repo_impl.dart' as _i23;
import 'package:hrplus/data/main/main_repo_impl.dart' as _i14;
import 'package:hrplus/data/profile/profile_api.dart' as _i21;
import 'package:hrplus/data/profile/profile_repo_impl.dart' as _i34;
import 'package:hrplus/domain/model/colors/dark_theme_colors.dart' as _i6;
import 'package:hrplus/domain/model/colors/theme_colors.dart' as _i8;
import 'package:hrplus/domain/model/dio_interceptor/dio_interceptor.dart'
    as _i12;
import 'package:hrplus/domain/model/storage/storage.dart' as _i9;
import 'package:hrplus/domain/repo/auth_repo.dart' as _i28;
import 'package:hrplus/domain/repo/calendar_repo.dart' as _i31;
import 'package:hrplus/domain/repo/camera_repo.dart' as _i25;
import 'package:hrplus/domain/repo/home_repo.dart' as _i22;
import 'package:hrplus/domain/repo/main_repo.dart' as _i13;
import 'package:hrplus/domain/repo/profile_repo.dart' as _i33;
import 'package:hrplus/presentation/auth/auth/cubit/auth_cubit.dart' as _i35;
import 'package:hrplus/presentation/auth/splash/cubit/splash_cubit.dart'
    as _i36;
import 'package:hrplus/presentation/camera/cubit/camera_cubit.dart' as _i30;
import 'package:hrplus/presentation/home/calendar/cubit/calendar_cubit.dart'
    as _i38;
import 'package:hrplus/presentation/home/home/cubit/home_cubit.dart' as _i24;
import 'package:hrplus/presentation/home/home/location_sheet/cubit/location_cubit.dart'
    as _i27;
import 'package:hrplus/presentation/main/cubit/main_cubit.dart' as _i15;
import 'package:hrplus/presentation/profile/cubit/profile_cubit.dart' as _i37;
import 'package:hrplus/presentation/profile/language_sheet/cubit/language_cubit.dart'
    as _i4;
import 'package:hrplus/presentation/webpage/cubit/webpage_cubit.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i3.LocationService>(() => _i3.LocationService());
    gh.factory<_i4.LanguageCubit>(() => _i4.LanguageCubit());
    gh.factory<_i5.WebpageCubit>(() => _i5.WebpageCubit());
    gh.singleton<_i6.DarkThemeColors>(() => _i6.DarkThemeColors());
    gh.lazySingleton<_i7.Logger>(() => appModule.logger);
    gh.lazySingleton<_i8.ThemeColors>(() => _i8.ThemeColors());
    await gh.lazySingletonAsync<_i9.Storage>(
      () => _i9.Storage.create(),
      preResolve: true,
    );
    gh.singleton<_i10.Display>(() => _i11.DisplayImpl());
    gh.lazySingleton<_i12.DioInterceptor>(
        () => _i12.DioInterceptor(gh<_i9.Storage>()));
    gh.factory<_i13.MainRepo>(() => _i14.MainRepoImpl(gh<_i9.Storage>()));
    gh.factory<_i15.MainCubit>(() => _i15.MainCubit(gh<_i13.MainRepo>()));
    gh.factory<_i16.Dio>(() => networkModule.dio(gh<_i12.DioInterceptor>()));
    gh.factory<_i17.AuthApi>(() => _i17.AuthApi(
          gh<_i16.Dio>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i18.CalendarApi>(() => _i18.CalendarApi(
          gh<_i16.Dio>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i19.CameraApi>(() => _i19.CameraApi(
          gh<_i16.Dio>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i20.HomeApi>(() => _i20.HomeApi(
          gh<_i16.Dio>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i21.ProfileApi>(() => _i21.ProfileApi(
          gh<_i16.Dio>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i22.HomeRepo>(
        () => _i23.HomeRepositoryImpl(gh<_i20.HomeApi>()));
    gh.factory<_i24.HomeCubit>(() => _i24.HomeCubit(
          gh<_i22.HomeRepo>(),
          gh<_i3.LocationService>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i25.CameraRepo>(
        () => _i26.CameraRepoImpl(gh<_i19.CameraApi>()));
    gh.factory<_i27.LocationCubit>(() => _i27.LocationCubit(
          gh<_i9.Storage>(),
          gh<_i22.HomeRepo>(),
        ));
    gh.factory<_i28.AuthRepo>(() => _i29.AuthRepoImpl(gh<_i17.AuthApi>()));
    gh.factory<_i30.CameraCubit>(() => _i30.CameraCubit(
          gh<_i25.CameraRepo>(),
          gh<_i3.LocationService>(),
        ));
    gh.factory<_i31.CalendarRepo>(
        () => _i32.CalendarRepoImpl(gh<_i18.CalendarApi>()));
    gh.factory<_i33.ProfileRepo>(
        () => _i34.ProfileRepositoryImpl(gh<_i21.ProfileApi>()));
    gh.factory<_i35.AuthCubit>(() => _i35.AuthCubit(
          gh<_i28.AuthRepo>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i36.SplashCubit>(() => _i36.SplashCubit(
          gh<_i9.Storage>(),
          gh<_i28.AuthRepo>(),
        ));
    gh.factory<_i37.ProfileCubit>(() => _i37.ProfileCubit(
          gh<_i33.ProfileRepo>(),
          gh<_i9.Storage>(),
        ));
    gh.factory<_i38.CalendarCubit>(
        () => _i38.CalendarCubit(gh<_i31.CalendarRepo>()));
    return this;
  }
}

class _$AppModule extends _i39.AppModule {}

class _$NetworkModule extends _i40.NetworkModule {}
