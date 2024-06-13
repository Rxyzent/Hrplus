import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/domain/repo/main_repo.dart';
import 'package:hrplus/presentation/main/cubit/main_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainCubit extends BaseCubit<MainBuildable, MainListenable> {
  MainCubit(this._repo) : super(const MainBuildable()){
    getThemeMode();
  }

  final MainRepo _repo;

  void select(String language) {
    build((buildable) => buildable.copyWith(language: language));
  }

  void changeTheme(bool value) async{
    build((buildable) => buildable.copyWith(themeMode: value));
    await _repo.setThemeMode(value);
  }

  void getThemeMode() async {
    final themeMode = _repo.getThemeMode();
    final currentThemeMode = PlatformDispatcher.instance.platformBrightness == Brightness.light;
    build((buildable) => buildable.copyWith(themeMode: themeMode ?? currentThemeMode));
  }

}