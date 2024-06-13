// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBuildable {
  dynamic get loading => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  dynamic get animate => throw _privateConstructorUsedError;
  int get notifNumber => throw _privateConstructorUsedError;
  SingleChartData? get singleChartData => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  UserInfo? get userInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBuildableCopyWith<HomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildableCopyWith<$Res> {
  factory $HomeBuildableCopyWith(
          HomeBuildable value, $Res Function(HomeBuildable) then) =
      _$HomeBuildableCopyWithImpl<$Res, HomeBuildable>;
  @useResult
  $Res call(
      {dynamic loading,
      dynamic error,
      dynamic animate,
      int notifNumber,
      SingleChartData? singleChartData,
      String? address,
      DateTime? dateTime,
      UserInfo? userInfo});

  $UserInfoCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$HomeBuildableCopyWithImpl<$Res, $Val extends HomeBuildable>
    implements $HomeBuildableCopyWith<$Res> {
  _$HomeBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? animate = freezed,
    Object? notifNumber = null,
    Object? singleChartData = freezed,
    Object? address = freezed,
    Object? dateTime = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      animate: freezed == animate
          ? _value.animate
          : animate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notifNumber: null == notifNumber
          ? _value.notifNumber
          : notifNumber // ignore: cast_nullable_to_non_nullable
              as int,
      singleChartData: freezed == singleChartData
          ? _value.singleChartData
          : singleChartData // ignore: cast_nullable_to_non_nullable
              as SingleChartData?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeBuildableImplCopyWith<$Res>
    implements $HomeBuildableCopyWith<$Res> {
  factory _$$HomeBuildableImplCopyWith(
          _$HomeBuildableImpl value, $Res Function(_$HomeBuildableImpl) then) =
      __$$HomeBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic loading,
      dynamic error,
      dynamic animate,
      int notifNumber,
      SingleChartData? singleChartData,
      String? address,
      DateTime? dateTime,
      UserInfo? userInfo});

  @override
  $UserInfoCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$HomeBuildableImplCopyWithImpl<$Res>
    extends _$HomeBuildableCopyWithImpl<$Res, _$HomeBuildableImpl>
    implements _$$HomeBuildableImplCopyWith<$Res> {
  __$$HomeBuildableImplCopyWithImpl(
      _$HomeBuildableImpl _value, $Res Function(_$HomeBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? animate = freezed,
    Object? notifNumber = null,
    Object? singleChartData = freezed,
    Object? address = freezed,
    Object? dateTime = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_$HomeBuildableImpl(
      loading: freezed == loading ? _value.loading! : loading,
      error: freezed == error ? _value.error! : error,
      animate: freezed == animate ? _value.animate! : animate,
      notifNumber: null == notifNumber
          ? _value.notifNumber
          : notifNumber // ignore: cast_nullable_to_non_nullable
              as int,
      singleChartData: freezed == singleChartData
          ? _value.singleChartData
          : singleChartData // ignore: cast_nullable_to_non_nullable
              as SingleChartData?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ));
  }
}

/// @nodoc

class _$HomeBuildableImpl implements _HomeBuildable {
  const _$HomeBuildableImpl(
      {this.loading = false,
      this.error = false,
      this.animate = false,
      this.notifNumber = 0,
      this.singleChartData,
      this.address,
      this.dateTime,
      this.userInfo});

  @override
  @JsonKey()
  final dynamic loading;
  @override
  @JsonKey()
  final dynamic error;
  @override
  @JsonKey()
  final dynamic animate;
  @override
  @JsonKey()
  final int notifNumber;
  @override
  final SingleChartData? singleChartData;
  @override
  final String? address;
  @override
  final DateTime? dateTime;
  @override
  final UserInfo? userInfo;

  @override
  String toString() {
    return 'HomeBuildable(loading: $loading, error: $error, animate: $animate, notifNumber: $notifNumber, singleChartData: $singleChartData, address: $address, dateTime: $dateTime, userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBuildableImpl &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.animate, animate) &&
            (identical(other.notifNumber, notifNumber) ||
                other.notifNumber == notifNumber) &&
            (identical(other.singleChartData, singleChartData) ||
                other.singleChartData == singleChartData) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(animate),
      notifNumber,
      singleChartData,
      address,
      dateTime,
      userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      __$$HomeBuildableImplCopyWithImpl<_$HomeBuildableImpl>(this, _$identity);
}

abstract class _HomeBuildable implements HomeBuildable {
  const factory _HomeBuildable(
      {final dynamic loading,
      final dynamic error,
      final dynamic animate,
      final int notifNumber,
      final SingleChartData? singleChartData,
      final String? address,
      final DateTime? dateTime,
      final UserInfo? userInfo}) = _$HomeBuildableImpl;

  @override
  dynamic get loading;
  @override
  dynamic get error;
  @override
  dynamic get animate;
  @override
  int get notifNumber;
  @override
  SingleChartData? get singleChartData;
  @override
  String? get address;
  @override
  DateTime? get dateTime;
  @override
  UserInfo? get userInfo;
  @override
  @JsonKey(ignore: true)
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeListenable {}

/// @nodoc
abstract class $HomeListenableCopyWith<$Res> {
  factory $HomeListenableCopyWith(
          HomeListenable value, $Res Function(HomeListenable) then) =
      _$HomeListenableCopyWithImpl<$Res, HomeListenable>;
}

/// @nodoc
class _$HomeListenableCopyWithImpl<$Res, $Val extends HomeListenable>
    implements $HomeListenableCopyWith<$Res> {
  _$HomeListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeListenableImplCopyWith<$Res> {
  factory _$$HomeListenableImplCopyWith(_$HomeListenableImpl value,
          $Res Function(_$HomeListenableImpl) then) =
      __$$HomeListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeListenableImplCopyWithImpl<$Res>
    extends _$HomeListenableCopyWithImpl<$Res, _$HomeListenableImpl>
    implements _$$HomeListenableImplCopyWith<$Res> {
  __$$HomeListenableImplCopyWithImpl(
      _$HomeListenableImpl _value, $Res Function(_$HomeListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeListenableImpl implements _HomeListenable {
  const _$HomeListenableImpl();

  @override
  String toString() {
    return 'HomeListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _HomeListenable implements HomeListenable {
  const factory _HomeListenable() = _$HomeListenableImpl;
}
