// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webpage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WebpageBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  WebViewController? get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebpageBuildableCopyWith<WebpageBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebpageBuildableCopyWith<$Res> {
  factory $WebpageBuildableCopyWith(
          WebpageBuildable value, $Res Function(WebpageBuildable) then) =
      _$WebpageBuildableCopyWithImpl<$Res, WebpageBuildable>;
  @useResult
  $Res call({bool loading, bool error, WebViewController? controller});
}

/// @nodoc
class _$WebpageBuildableCopyWithImpl<$Res, $Val extends WebpageBuildable>
    implements $WebpageBuildableCopyWith<$Res> {
  _$WebpageBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? controller = freezed,
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
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as WebViewController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebpageBuildableImplCopyWith<$Res>
    implements $WebpageBuildableCopyWith<$Res> {
  factory _$$WebpageBuildableImplCopyWith(_$WebpageBuildableImpl value,
          $Res Function(_$WebpageBuildableImpl) then) =
      __$$WebpageBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error, WebViewController? controller});
}

/// @nodoc
class __$$WebpageBuildableImplCopyWithImpl<$Res>
    extends _$WebpageBuildableCopyWithImpl<$Res, _$WebpageBuildableImpl>
    implements _$$WebpageBuildableImplCopyWith<$Res> {
  __$$WebpageBuildableImplCopyWithImpl(_$WebpageBuildableImpl _value,
      $Res Function(_$WebpageBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? controller = freezed,
  }) {
    return _then(_$WebpageBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as WebViewController?,
    ));
  }
}

/// @nodoc

class _$WebpageBuildableImpl implements _WebpageBuildable {
  const _$WebpageBuildableImpl(
      {this.loading = true, this.error = false, this.controller});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  final WebViewController? controller;

  @override
  String toString() {
    return 'WebpageBuildable(loading: $loading, error: $error, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebpageBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebpageBuildableImplCopyWith<_$WebpageBuildableImpl> get copyWith =>
      __$$WebpageBuildableImplCopyWithImpl<_$WebpageBuildableImpl>(
          this, _$identity);
}

abstract class _WebpageBuildable implements WebpageBuildable {
  const factory _WebpageBuildable(
      {final bool loading,
      final bool error,
      final WebViewController? controller}) = _$WebpageBuildableImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  WebViewController? get controller;
  @override
  @JsonKey(ignore: true)
  _$$WebpageBuildableImplCopyWith<_$WebpageBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WebpageListenable {}

/// @nodoc
abstract class $WebpageListenableCopyWith<$Res> {
  factory $WebpageListenableCopyWith(
          WebpageListenable value, $Res Function(WebpageListenable) then) =
      _$WebpageListenableCopyWithImpl<$Res, WebpageListenable>;
}

/// @nodoc
class _$WebpageListenableCopyWithImpl<$Res, $Val extends WebpageListenable>
    implements $WebpageListenableCopyWith<$Res> {
  _$WebpageListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WebpageListenableImplCopyWith<$Res> {
  factory _$$WebpageListenableImplCopyWith(_$WebpageListenableImpl value,
          $Res Function(_$WebpageListenableImpl) then) =
      __$$WebpageListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WebpageListenableImplCopyWithImpl<$Res>
    extends _$WebpageListenableCopyWithImpl<$Res, _$WebpageListenableImpl>
    implements _$$WebpageListenableImplCopyWith<$Res> {
  __$$WebpageListenableImplCopyWithImpl(_$WebpageListenableImpl _value,
      $Res Function(_$WebpageListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WebpageListenableImpl implements _WebpageListenable {
  const _$WebpageListenableImpl();

  @override
  String toString() {
    return 'WebpageListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WebpageListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _WebpageListenable implements WebpageListenable {
  const factory _WebpageListenable() = _$WebpageListenableImpl;
}
