// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageBuildable {
  String? get currentLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageBuildableCopyWith<LanguageBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageBuildableCopyWith<$Res> {
  factory $LanguageBuildableCopyWith(
          LanguageBuildable value, $Res Function(LanguageBuildable) then) =
      _$LanguageBuildableCopyWithImpl<$Res, LanguageBuildable>;
  @useResult
  $Res call({String? currentLanguage});
}

/// @nodoc
class _$LanguageBuildableCopyWithImpl<$Res, $Val extends LanguageBuildable>
    implements $LanguageBuildableCopyWith<$Res> {
  _$LanguageBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageBuildableImplCopyWith<$Res>
    implements $LanguageBuildableCopyWith<$Res> {
  factory _$$LanguageBuildableImplCopyWith(_$LanguageBuildableImpl value,
          $Res Function(_$LanguageBuildableImpl) then) =
      __$$LanguageBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? currentLanguage});
}

/// @nodoc
class __$$LanguageBuildableImplCopyWithImpl<$Res>
    extends _$LanguageBuildableCopyWithImpl<$Res, _$LanguageBuildableImpl>
    implements _$$LanguageBuildableImplCopyWith<$Res> {
  __$$LanguageBuildableImplCopyWithImpl(_$LanguageBuildableImpl _value,
      $Res Function(_$LanguageBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguage = freezed,
  }) {
    return _then(_$LanguageBuildableImpl(
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LanguageBuildableImpl implements _LanguageBuildable {
  const _$LanguageBuildableImpl({this.currentLanguage});

  @override
  final String? currentLanguage;

  @override
  String toString() {
    return 'LanguageBuildable(currentLanguage: $currentLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageBuildableImpl &&
            (identical(other.currentLanguage, currentLanguage) ||
                other.currentLanguage == currentLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageBuildableImplCopyWith<_$LanguageBuildableImpl> get copyWith =>
      __$$LanguageBuildableImplCopyWithImpl<_$LanguageBuildableImpl>(
          this, _$identity);
}

abstract class _LanguageBuildable implements LanguageBuildable {
  const factory _LanguageBuildable({final String? currentLanguage}) =
      _$LanguageBuildableImpl;

  @override
  String? get currentLanguage;
  @override
  @JsonKey(ignore: true)
  _$$LanguageBuildableImplCopyWith<_$LanguageBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageListenable {}

/// @nodoc
abstract class $LanguageListenableCopyWith<$Res> {
  factory $LanguageListenableCopyWith(
          LanguageListenable value, $Res Function(LanguageListenable) then) =
      _$LanguageListenableCopyWithImpl<$Res, LanguageListenable>;
}

/// @nodoc
class _$LanguageListenableCopyWithImpl<$Res, $Val extends LanguageListenable>
    implements $LanguageListenableCopyWith<$Res> {
  _$LanguageListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LanguageListenableImplCopyWith<$Res> {
  factory _$$LanguageListenableImplCopyWith(_$LanguageListenableImpl value,
          $Res Function(_$LanguageListenableImpl) then) =
      __$$LanguageListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageListenableImplCopyWithImpl<$Res>
    extends _$LanguageListenableCopyWithImpl<$Res, _$LanguageListenableImpl>
    implements _$$LanguageListenableImplCopyWith<$Res> {
  __$$LanguageListenableImplCopyWithImpl(_$LanguageListenableImpl _value,
      $Res Function(_$LanguageListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageListenableImpl implements _LanguageListenable {
  const _$LanguageListenableImpl();

  @override
  String toString() {
    return 'LanguageListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LanguageListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LanguageListenable implements LanguageListenable {
  const factory _LanguageListenable() = _$LanguageListenableImpl;
}
