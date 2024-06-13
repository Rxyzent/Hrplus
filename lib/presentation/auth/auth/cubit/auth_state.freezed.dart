// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String? get phoneError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  String? get deviceError => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthBuildableCopyWith<AuthBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBuildableCopyWith<$Res> {
  factory $AuthBuildableCopyWith(
          AuthBuildable value, $Res Function(AuthBuildable) then) =
      _$AuthBuildableCopyWithImpl<$Res, AuthBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String? phoneError,
      String? passwordError,
      String? deviceError,
      String? phoneNumber,
      String? password,
      String? deviceId});
}

/// @nodoc
class _$AuthBuildableCopyWithImpl<$Res, $Val extends AuthBuildable>
    implements $AuthBuildableCopyWith<$Res> {
  _$AuthBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? phoneError = freezed,
    Object? passwordError = freezed,
    Object? deviceError = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneError: freezed == phoneError
          ? _value.phoneError
          : phoneError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceError: freezed == deviceError
          ? _value.deviceError
          : deviceError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthBuildableImplCopyWith<$Res>
    implements $AuthBuildableCopyWith<$Res> {
  factory _$$AuthBuildableImplCopyWith(
          _$AuthBuildableImpl value, $Res Function(_$AuthBuildableImpl) then) =
      __$$AuthBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String? phoneError,
      String? passwordError,
      String? deviceError,
      String? phoneNumber,
      String? password,
      String? deviceId});
}

/// @nodoc
class __$$AuthBuildableImplCopyWithImpl<$Res>
    extends _$AuthBuildableCopyWithImpl<$Res, _$AuthBuildableImpl>
    implements _$$AuthBuildableImplCopyWith<$Res> {
  __$$AuthBuildableImplCopyWithImpl(
      _$AuthBuildableImpl _value, $Res Function(_$AuthBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? phoneError = freezed,
    Object? passwordError = freezed,
    Object? deviceError = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$AuthBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneError: freezed == phoneError
          ? _value.phoneError
          : phoneError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceError: freezed == deviceError
          ? _value.deviceError
          : deviceError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthBuildableImpl implements _AuthBuildable {
  const _$AuthBuildableImpl(
      {this.loading = false,
      this.error = false,
      this.phoneError,
      this.passwordError,
      this.deviceError,
      this.phoneNumber,
      this.password,
      this.deviceId});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  final String? phoneError;
  @override
  final String? passwordError;
  @override
  final String? deviceError;
  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'AuthBuildable(loading: $loading, error: $error, phoneError: $phoneError, passwordError: $passwordError, deviceError: $deviceError, phoneNumber: $phoneNumber, password: $password, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.phoneError, phoneError) ||
                other.phoneError == phoneError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.deviceError, deviceError) ||
                other.deviceError == deviceError) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, phoneError,
      passwordError, deviceError, phoneNumber, password, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthBuildableImplCopyWith<_$AuthBuildableImpl> get copyWith =>
      __$$AuthBuildableImplCopyWithImpl<_$AuthBuildableImpl>(this, _$identity);
}

abstract class _AuthBuildable implements AuthBuildable {
  const factory _AuthBuildable(
      {final bool loading,
      final bool error,
      final String? phoneError,
      final String? passwordError,
      final String? deviceError,
      final String? phoneNumber,
      final String? password,
      final String? deviceId}) = _$AuthBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  String? get phoneError;
  @override
  String? get passwordError;
  @override
  String? get deviceError;
  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$AuthBuildableImplCopyWith<_$AuthBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthListenable {
  AuthEffect get effect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthListenableCopyWith<AuthListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthListenableCopyWith<$Res> {
  factory $AuthListenableCopyWith(
          AuthListenable value, $Res Function(AuthListenable) then) =
      _$AuthListenableCopyWithImpl<$Res, AuthListenable>;
  @useResult
  $Res call({AuthEffect effect});
}

/// @nodoc
class _$AuthListenableCopyWithImpl<$Res, $Val extends AuthListenable>
    implements $AuthListenableCopyWith<$Res> {
  _$AuthListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as AuthEffect,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthListenableImplCopyWith<$Res>
    implements $AuthListenableCopyWith<$Res> {
  factory _$$AuthListenableImplCopyWith(_$AuthListenableImpl value,
          $Res Function(_$AuthListenableImpl) then) =
      __$$AuthListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthEffect effect});
}

/// @nodoc
class __$$AuthListenableImplCopyWithImpl<$Res>
    extends _$AuthListenableCopyWithImpl<$Res, _$AuthListenableImpl>
    implements _$$AuthListenableImplCopyWith<$Res> {
  __$$AuthListenableImplCopyWithImpl(
      _$AuthListenableImpl _value, $Res Function(_$AuthListenableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
  }) {
    return _then(_$AuthListenableImpl(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as AuthEffect,
    ));
  }
}

/// @nodoc

class _$AuthListenableImpl implements _AuthListenable {
  const _$AuthListenableImpl({required this.effect});

  @override
  final AuthEffect effect;

  @override
  String toString() {
    return 'AuthListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthListenableImplCopyWith<_$AuthListenableImpl> get copyWith =>
      __$$AuthListenableImplCopyWithImpl<_$AuthListenableImpl>(
          this, _$identity);
}

abstract class _AuthListenable implements AuthListenable {
  const factory _AuthListenable({required final AuthEffect effect}) =
      _$AuthListenableImpl;

  @override
  AuthEffect get effect;
  @override
  @JsonKey(ignore: true)
  _$$AuthListenableImplCopyWith<_$AuthListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
