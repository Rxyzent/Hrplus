// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationBuildable {
  dynamic get loading => throw _privateConstructorUsedError;
  bool get locationState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationBuildableCopyWith<LocationBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationBuildableCopyWith<$Res> {
  factory $LocationBuildableCopyWith(
          LocationBuildable value, $Res Function(LocationBuildable) then) =
      _$LocationBuildableCopyWithImpl<$Res, LocationBuildable>;
  @useResult
  $Res call({dynamic loading, bool locationState});
}

/// @nodoc
class _$LocationBuildableCopyWithImpl<$Res, $Val extends LocationBuildable>
    implements $LocationBuildableCopyWith<$Res> {
  _$LocationBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? locationState = null,
  }) {
    return _then(_value.copyWith(
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationBuildableImplCopyWith<$Res>
    implements $LocationBuildableCopyWith<$Res> {
  factory _$$LocationBuildableImplCopyWith(_$LocationBuildableImpl value,
          $Res Function(_$LocationBuildableImpl) then) =
      __$$LocationBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic loading, bool locationState});
}

/// @nodoc
class __$$LocationBuildableImplCopyWithImpl<$Res>
    extends _$LocationBuildableCopyWithImpl<$Res, _$LocationBuildableImpl>
    implements _$$LocationBuildableImplCopyWith<$Res> {
  __$$LocationBuildableImplCopyWithImpl(_$LocationBuildableImpl _value,
      $Res Function(_$LocationBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? locationState = null,
  }) {
    return _then(_$LocationBuildableImpl(
      loading: freezed == loading ? _value.loading! : loading,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocationBuildableImpl implements _LocationBuildable {
  const _$LocationBuildableImpl(
      {this.loading = false, this.locationState = false});

  @override
  @JsonKey()
  final dynamic loading;
  @override
  @JsonKey()
  final bool locationState;

  @override
  String toString() {
    return 'LocationBuildable(loading: $loading, locationState: $locationState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationBuildableImpl &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            (identical(other.locationState, locationState) ||
                other.locationState == locationState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(loading), locationState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationBuildableImplCopyWith<_$LocationBuildableImpl> get copyWith =>
      __$$LocationBuildableImplCopyWithImpl<_$LocationBuildableImpl>(
          this, _$identity);
}

abstract class _LocationBuildable implements LocationBuildable {
  const factory _LocationBuildable(
      {final dynamic loading,
      final bool locationState}) = _$LocationBuildableImpl;

  @override
  dynamic get loading;
  @override
  bool get locationState;
  @override
  @JsonKey(ignore: true)
  _$$LocationBuildableImplCopyWith<_$LocationBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationListenable {}

/// @nodoc
abstract class $LocationListenableCopyWith<$Res> {
  factory $LocationListenableCopyWith(
          LocationListenable value, $Res Function(LocationListenable) then) =
      _$LocationListenableCopyWithImpl<$Res, LocationListenable>;
}

/// @nodoc
class _$LocationListenableCopyWithImpl<$Res, $Val extends LocationListenable>
    implements $LocationListenableCopyWith<$Res> {
  _$LocationListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationListenableImplCopyWith<$Res> {
  factory _$$LocationListenableImplCopyWith(_$LocationListenableImpl value,
          $Res Function(_$LocationListenableImpl) then) =
      __$$LocationListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationListenableImplCopyWithImpl<$Res>
    extends _$LocationListenableCopyWithImpl<$Res, _$LocationListenableImpl>
    implements _$$LocationListenableImplCopyWith<$Res> {
  __$$LocationListenableImplCopyWithImpl(_$LocationListenableImpl _value,
      $Res Function(_$LocationListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationListenableImpl implements _LocationListenable {
  const _$LocationListenableImpl();

  @override
  String toString() {
    return 'LocationListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LocationListenable implements LocationListenable {
  const factory _LocationListenable() = _$LocationListenableImpl;
}
