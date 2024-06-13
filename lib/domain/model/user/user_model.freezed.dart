// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get image => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get fullName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get notifUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get profileUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get isTablet => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get liveLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? image,
      @HiveField(2) String? phoneNumber,
      @HiveField(3) String? fullName,
      @HiveField(4) String? notifUrl,
      @HiveField(5) String? profileUrl,
      @HiveField(6) bool? isTablet,
      @HiveField(7) bool? liveLocation});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? notifUrl = freezed,
    Object? profileUrl = freezed,
    Object? isTablet = freezed,
    Object? liveLocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      notifUrl: freezed == notifUrl
          ? _value.notifUrl
          : notifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isTablet: freezed == isTablet
          ? _value.isTablet
          : isTablet // ignore: cast_nullable_to_non_nullable
              as bool?,
      liveLocation: freezed == liveLocation
          ? _value.liveLocation
          : liveLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? image,
      @HiveField(2) String? phoneNumber,
      @HiveField(3) String? fullName,
      @HiveField(4) String? notifUrl,
      @HiveField(5) String? profileUrl,
      @HiveField(6) bool? isTablet,
      @HiveField(7) bool? liveLocation});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? notifUrl = freezed,
    Object? profileUrl = freezed,
    Object? isTablet = freezed,
    Object? liveLocation = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      notifUrl: freezed == notifUrl
          ? _value.notifUrl
          : notifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isTablet: freezed == isTablet
          ? _value.isTablet
          : isTablet // ignore: cast_nullable_to_non_nullable
              as bool?,
      liveLocation: freezed == liveLocation
          ? _value.liveLocation
          : liveLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
@HiveType(typeId: 0)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.image,
      @HiveField(2) this.phoneNumber,
      @HiveField(3) this.fullName,
      @HiveField(4) this.notifUrl,
      @HiveField(5) this.profileUrl,
      @HiveField(6) this.isTablet,
      @HiveField(7) this.liveLocation});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? image;
  @override
  @HiveField(2)
  final String? phoneNumber;
  @override
  @HiveField(3)
  final String? fullName;
  @override
  @HiveField(4)
  final String? notifUrl;
  @override
  @HiveField(5)
  final String? profileUrl;
  @override
  @HiveField(6)
  final bool? isTablet;
  @override
  @HiveField(7)
  final bool? liveLocation;

  @override
  String toString() {
    return 'UserModel(id: $id, image: $image, phoneNumber: $phoneNumber, fullName: $fullName, notifUrl: $notifUrl, profileUrl: $profileUrl, isTablet: $isTablet, liveLocation: $liveLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.notifUrl, notifUrl) ||
                other.notifUrl == notifUrl) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.isTablet, isTablet) ||
                other.isTablet == isTablet) &&
            (identical(other.liveLocation, liveLocation) ||
                other.liveLocation == liveLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, phoneNumber, fullName,
      notifUrl, profileUrl, isTablet, liveLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? image,
      @HiveField(2) final String? phoneNumber,
      @HiveField(3) final String? fullName,
      @HiveField(4) final String? notifUrl,
      @HiveField(5) final String? profileUrl,
      @HiveField(6) final bool? isTablet,
      @HiveField(7) final bool? liveLocation}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get image;
  @override
  @HiveField(2)
  String? get phoneNumber;
  @override
  @HiveField(3)
  String? get fullName;
  @override
  @HiveField(4)
  String? get notifUrl;
  @override
  @HiveField(5)
  String? get profileUrl;
  @override
  @HiveField(6)
  bool? get isTablet;
  @override
  @HiveField(7)
  bool? get liveLocation;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
