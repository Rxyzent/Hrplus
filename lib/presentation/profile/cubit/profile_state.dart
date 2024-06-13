import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrplus/common/gen/strings.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileBuildable with _$ProfileBuildable {
  const factory ProfileBuildable({
    @Default(true) bool loading,
    @Default(false) bool error,
    @Default(true) bool notificationState,
    @Default(true) bool themeState,
    @Default(false) bool isTabletMode,
    @Default('') String image,
    @Default('Employee name') String name,
    @Default('+998 (9X) XXX XX XX') String phone,
    @Default('') String profileUrl,
}) = _ProfileBuildable;
}

@freezed
class ProfileListenable with _$ProfileListenable {
  const factory ProfileListenable({ required ProfileEffect effect,}) = _ProfileListenable;
}

enum ProfileEffect { logout}