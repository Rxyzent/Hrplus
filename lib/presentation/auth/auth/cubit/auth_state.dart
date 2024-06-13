import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthBuildable with _$AuthBuildable {
  const factory AuthBuildable({
    @Default(false) bool loading,
    @Default(false) bool error,
    String? phoneError,
    String? passwordError,
    String? deviceError,
    String? phoneNumber,
    String? password,
    String? deviceId
}) = _AuthBuildable;
}

@freezed
class AuthListenable with _$AuthListenable {
  const factory AuthListenable({
required AuthEffect effect,
}) = _AuthListenable;
}

enum AuthEffect{success,error}