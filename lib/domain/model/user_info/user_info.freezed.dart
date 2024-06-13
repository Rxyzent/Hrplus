// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get isLiveLocationSupported => throw _privateConstructorUsedError;
  bool? get isForPlanshet => throw _privateConstructorUsedError;
  String? get currentLanguage => throw _privateConstructorUsedError;
  bool? get notifStatus => throw _privateConstructorUsedError;
  int? get notifsNumber => throw _privateConstructorUsedError;
  String? get profileUrl => throw _privateConstructorUsedError;
  String? get notifUrl => throw _privateConstructorUsedError;
  ChartData? get chartData => throw _privateConstructorUsedError;
  @JsonKey(name: 'comeIn_getOut')
  ComeInGetOut? get comeInGetOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String? name,
      String? image,
      String? phone,
      bool? isLiveLocationSupported,
      bool? isForPlanshet,
      String? currentLanguage,
      bool? notifStatus,
      int? notifsNumber,
      String? profileUrl,
      String? notifUrl,
      ChartData? chartData,
      @JsonKey(name: 'comeIn_getOut') ComeInGetOut? comeInGetOut});

  $ChartDataCopyWith<$Res>? get chartData;
  $ComeInGetOutCopyWith<$Res>? get comeInGetOut;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? isLiveLocationSupported = freezed,
    Object? isForPlanshet = freezed,
    Object? currentLanguage = freezed,
    Object? notifStatus = freezed,
    Object? notifsNumber = freezed,
    Object? profileUrl = freezed,
    Object? notifUrl = freezed,
    Object? chartData = freezed,
    Object? comeInGetOut = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiveLocationSupported: freezed == isLiveLocationSupported
          ? _value.isLiveLocationSupported
          : isLiveLocationSupported // ignore: cast_nullable_to_non_nullable
              as bool?,
      isForPlanshet: freezed == isForPlanshet
          ? _value.isForPlanshet
          : isForPlanshet // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      notifStatus: freezed == notifStatus
          ? _value.notifStatus
          : notifStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifsNumber: freezed == notifsNumber
          ? _value.notifsNumber
          : notifsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notifUrl: freezed == notifUrl
          ? _value.notifUrl
          : notifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      chartData: freezed == chartData
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as ChartData?,
      comeInGetOut: freezed == comeInGetOut
          ? _value.comeInGetOut
          : comeInGetOut // ignore: cast_nullable_to_non_nullable
              as ComeInGetOut?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChartDataCopyWith<$Res>? get chartData {
    if (_value.chartData == null) {
      return null;
    }

    return $ChartDataCopyWith<$Res>(_value.chartData!, (value) {
      return _then(_value.copyWith(chartData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComeInGetOutCopyWith<$Res>? get comeInGetOut {
    if (_value.comeInGetOut == null) {
      return null;
    }

    return $ComeInGetOutCopyWith<$Res>(_value.comeInGetOut!, (value) {
      return _then(_value.copyWith(comeInGetOut: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? image,
      String? phone,
      bool? isLiveLocationSupported,
      bool? isForPlanshet,
      String? currentLanguage,
      bool? notifStatus,
      int? notifsNumber,
      String? profileUrl,
      String? notifUrl,
      ChartData? chartData,
      @JsonKey(name: 'comeIn_getOut') ComeInGetOut? comeInGetOut});

  @override
  $ChartDataCopyWith<$Res>? get chartData;
  @override
  $ComeInGetOutCopyWith<$Res>? get comeInGetOut;
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? isLiveLocationSupported = freezed,
    Object? isForPlanshet = freezed,
    Object? currentLanguage = freezed,
    Object? notifStatus = freezed,
    Object? notifsNumber = freezed,
    Object? profileUrl = freezed,
    Object? notifUrl = freezed,
    Object? chartData = freezed,
    Object? comeInGetOut = freezed,
  }) {
    return _then(_$UserInfoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiveLocationSupported: freezed == isLiveLocationSupported
          ? _value.isLiveLocationSupported
          : isLiveLocationSupported // ignore: cast_nullable_to_non_nullable
              as bool?,
      isForPlanshet: freezed == isForPlanshet
          ? _value.isForPlanshet
          : isForPlanshet // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentLanguage: freezed == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      notifStatus: freezed == notifStatus
          ? _value.notifStatus
          : notifStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifsNumber: freezed == notifsNumber
          ? _value.notifsNumber
          : notifsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notifUrl: freezed == notifUrl
          ? _value.notifUrl
          : notifUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      chartData: freezed == chartData
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as ChartData?,
      comeInGetOut: freezed == comeInGetOut
          ? _value.comeInGetOut
          : comeInGetOut // ignore: cast_nullable_to_non_nullable
              as ComeInGetOut?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl(
      {this.name,
      this.image,
      this.phone,
      this.isLiveLocationSupported,
      this.isForPlanshet,
      this.currentLanguage,
      this.notifStatus,
      this.notifsNumber,
      this.profileUrl,
      this.notifUrl,
      this.chartData,
      @JsonKey(name: 'comeIn_getOut') this.comeInGetOut});

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? phone;
  @override
  final bool? isLiveLocationSupported;
  @override
  final bool? isForPlanshet;
  @override
  final String? currentLanguage;
  @override
  final bool? notifStatus;
  @override
  final int? notifsNumber;
  @override
  final String? profileUrl;
  @override
  final String? notifUrl;
  @override
  final ChartData? chartData;
  @override
  @JsonKey(name: 'comeIn_getOut')
  final ComeInGetOut? comeInGetOut;

  @override
  String toString() {
    return 'UserInfo(name: $name, image: $image, phone: $phone, isLiveLocationSupported: $isLiveLocationSupported, isForPlanshet: $isForPlanshet, currentLanguage: $currentLanguage, notifStatus: $notifStatus, notifsNumber: $notifsNumber, profileUrl: $profileUrl, notifUrl: $notifUrl, chartData: $chartData, comeInGetOut: $comeInGetOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(
                    other.isLiveLocationSupported, isLiveLocationSupported) ||
                other.isLiveLocationSupported == isLiveLocationSupported) &&
            (identical(other.isForPlanshet, isForPlanshet) ||
                other.isForPlanshet == isForPlanshet) &&
            (identical(other.currentLanguage, currentLanguage) ||
                other.currentLanguage == currentLanguage) &&
            (identical(other.notifStatus, notifStatus) ||
                other.notifStatus == notifStatus) &&
            (identical(other.notifsNumber, notifsNumber) ||
                other.notifsNumber == notifsNumber) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.notifUrl, notifUrl) ||
                other.notifUrl == notifUrl) &&
            (identical(other.chartData, chartData) ||
                other.chartData == chartData) &&
            (identical(other.comeInGetOut, comeInGetOut) ||
                other.comeInGetOut == comeInGetOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      image,
      phone,
      isLiveLocationSupported,
      isForPlanshet,
      currentLanguage,
      notifStatus,
      notifsNumber,
      profileUrl,
      notifUrl,
      chartData,
      comeInGetOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
          {final String? name,
          final String? image,
          final String? phone,
          final bool? isLiveLocationSupported,
          final bool? isForPlanshet,
          final String? currentLanguage,
          final bool? notifStatus,
          final int? notifsNumber,
          final String? profileUrl,
          final String? notifUrl,
          final ChartData? chartData,
          @JsonKey(name: 'comeIn_getOut') final ComeInGetOut? comeInGetOut}) =
      _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get phone;
  @override
  bool? get isLiveLocationSupported;
  @override
  bool? get isForPlanshet;
  @override
  String? get currentLanguage;
  @override
  bool? get notifStatus;
  @override
  int? get notifsNumber;
  @override
  String? get profileUrl;
  @override
  String? get notifUrl;
  @override
  ChartData? get chartData;
  @override
  @JsonKey(name: 'comeIn_getOut')
  ComeInGetOut? get comeInGetOut;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChartData _$ChartDataFromJson(Map<String, dynamic> json) {
  return _ChartData.fromJson(json);
}

/// @nodoc
mixin _$ChartData {
  int? get early => throw _privateConstructorUsedError;
  int? get late => throw _privateConstructorUsedError;
  @JsonKey(name: 'dont_come')
  int? get dontCome => throw _privateConstructorUsedError;
  int? get relax => throw _privateConstructorUsedError;
  int? get forgot => throw _privateConstructorUsedError;
  int? get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartDataCopyWith<ChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataCopyWith<$Res> {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) then) =
      _$ChartDataCopyWithImpl<$Res, ChartData>;
  @useResult
  $Res call(
      {int? early,
      int? late,
      @JsonKey(name: 'dont_come') int? dontCome,
      int? relax,
      int? forgot,
      int? all});
}

/// @nodoc
class _$ChartDataCopyWithImpl<$Res, $Val extends ChartData>
    implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? early = freezed,
    Object? late = freezed,
    Object? dontCome = freezed,
    Object? relax = freezed,
    Object? forgot = freezed,
    Object? all = freezed,
  }) {
    return _then(_value.copyWith(
      early: freezed == early
          ? _value.early
          : early // ignore: cast_nullable_to_non_nullable
              as int?,
      late: freezed == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int?,
      dontCome: freezed == dontCome
          ? _value.dontCome
          : dontCome // ignore: cast_nullable_to_non_nullable
              as int?,
      relax: freezed == relax
          ? _value.relax
          : relax // ignore: cast_nullable_to_non_nullable
              as int?,
      forgot: freezed == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as int?,
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartDataImplCopyWith<$Res>
    implements $ChartDataCopyWith<$Res> {
  factory _$$ChartDataImplCopyWith(
          _$ChartDataImpl value, $Res Function(_$ChartDataImpl) then) =
      __$$ChartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? early,
      int? late,
      @JsonKey(name: 'dont_come') int? dontCome,
      int? relax,
      int? forgot,
      int? all});
}

/// @nodoc
class __$$ChartDataImplCopyWithImpl<$Res>
    extends _$ChartDataCopyWithImpl<$Res, _$ChartDataImpl>
    implements _$$ChartDataImplCopyWith<$Res> {
  __$$ChartDataImplCopyWithImpl(
      _$ChartDataImpl _value, $Res Function(_$ChartDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? early = freezed,
    Object? late = freezed,
    Object? dontCome = freezed,
    Object? relax = freezed,
    Object? forgot = freezed,
    Object? all = freezed,
  }) {
    return _then(_$ChartDataImpl(
      early: freezed == early
          ? _value.early
          : early // ignore: cast_nullable_to_non_nullable
              as int?,
      late: freezed == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int?,
      dontCome: freezed == dontCome
          ? _value.dontCome
          : dontCome // ignore: cast_nullable_to_non_nullable
              as int?,
      relax: freezed == relax
          ? _value.relax
          : relax // ignore: cast_nullable_to_non_nullable
              as int?,
      forgot: freezed == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as int?,
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChartDataImpl implements _ChartData {
  const _$ChartDataImpl(
      {this.early,
      this.late,
      @JsonKey(name: 'dont_come') this.dontCome,
      this.relax,
      this.forgot,
      this.all});

  factory _$ChartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartDataImplFromJson(json);

  @override
  final int? early;
  @override
  final int? late;
  @override
  @JsonKey(name: 'dont_come')
  final int? dontCome;
  @override
  final int? relax;
  @override
  final int? forgot;
  @override
  final int? all;

  @override
  String toString() {
    return 'ChartData(early: $early, late: $late, dontCome: $dontCome, relax: $relax, forgot: $forgot, all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartDataImpl &&
            (identical(other.early, early) || other.early == early) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.dontCome, dontCome) ||
                other.dontCome == dontCome) &&
            (identical(other.relax, relax) || other.relax == relax) &&
            (identical(other.forgot, forgot) || other.forgot == forgot) &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, early, late, dontCome, relax, forgot, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartDataImplCopyWith<_$ChartDataImpl> get copyWith =>
      __$$ChartDataImplCopyWithImpl<_$ChartDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartDataImplToJson(
      this,
    );
  }
}

abstract class _ChartData implements ChartData {
  const factory _ChartData(
      {final int? early,
      final int? late,
      @JsonKey(name: 'dont_come') final int? dontCome,
      final int? relax,
      final int? forgot,
      final int? all}) = _$ChartDataImpl;

  factory _ChartData.fromJson(Map<String, dynamic> json) =
      _$ChartDataImpl.fromJson;

  @override
  int? get early;
  @override
  int? get late;
  @override
  @JsonKey(name: 'dont_come')
  int? get dontCome;
  @override
  int? get relax;
  @override
  int? get forgot;
  @override
  int? get all;
  @override
  @JsonKey(ignore: true)
  _$$ChartDataImplCopyWith<_$ChartDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComeInGetOut _$ComeInGetOutFromJson(Map<String, dynamic> json) {
  return _ComeInGetOut.fromJson(json);
}

/// @nodoc
mixin _$ComeInGetOut {
  String? get comeIn => throw _privateConstructorUsedError;
  String? get getOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComeInGetOutCopyWith<ComeInGetOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComeInGetOutCopyWith<$Res> {
  factory $ComeInGetOutCopyWith(
          ComeInGetOut value, $Res Function(ComeInGetOut) then) =
      _$ComeInGetOutCopyWithImpl<$Res, ComeInGetOut>;
  @useResult
  $Res call({String? comeIn, String? getOut});
}

/// @nodoc
class _$ComeInGetOutCopyWithImpl<$Res, $Val extends ComeInGetOut>
    implements $ComeInGetOutCopyWith<$Res> {
  _$ComeInGetOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comeIn = freezed,
    Object? getOut = freezed,
  }) {
    return _then(_value.copyWith(
      comeIn: freezed == comeIn
          ? _value.comeIn
          : comeIn // ignore: cast_nullable_to_non_nullable
              as String?,
      getOut: freezed == getOut
          ? _value.getOut
          : getOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComeInGetOutImplCopyWith<$Res>
    implements $ComeInGetOutCopyWith<$Res> {
  factory _$$ComeInGetOutImplCopyWith(
          _$ComeInGetOutImpl value, $Res Function(_$ComeInGetOutImpl) then) =
      __$$ComeInGetOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? comeIn, String? getOut});
}

/// @nodoc
class __$$ComeInGetOutImplCopyWithImpl<$Res>
    extends _$ComeInGetOutCopyWithImpl<$Res, _$ComeInGetOutImpl>
    implements _$$ComeInGetOutImplCopyWith<$Res> {
  __$$ComeInGetOutImplCopyWithImpl(
      _$ComeInGetOutImpl _value, $Res Function(_$ComeInGetOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comeIn = freezed,
    Object? getOut = freezed,
  }) {
    return _then(_$ComeInGetOutImpl(
      comeIn: freezed == comeIn
          ? _value.comeIn
          : comeIn // ignore: cast_nullable_to_non_nullable
              as String?,
      getOut: freezed == getOut
          ? _value.getOut
          : getOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComeInGetOutImpl implements _ComeInGetOut {
  const _$ComeInGetOutImpl({this.comeIn, this.getOut});

  factory _$ComeInGetOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComeInGetOutImplFromJson(json);

  @override
  final String? comeIn;
  @override
  final String? getOut;

  @override
  String toString() {
    return 'ComeInGetOut(comeIn: $comeIn, getOut: $getOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComeInGetOutImpl &&
            (identical(other.comeIn, comeIn) || other.comeIn == comeIn) &&
            (identical(other.getOut, getOut) || other.getOut == getOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comeIn, getOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComeInGetOutImplCopyWith<_$ComeInGetOutImpl> get copyWith =>
      __$$ComeInGetOutImplCopyWithImpl<_$ComeInGetOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComeInGetOutImplToJson(
      this,
    );
  }
}

abstract class _ComeInGetOut implements ComeInGetOut {
  const factory _ComeInGetOut({final String? comeIn, final String? getOut}) =
      _$ComeInGetOutImpl;

  factory _ComeInGetOut.fromJson(Map<String, dynamic> json) =
      _$ComeInGetOutImpl.fromJson;

  @override
  String? get comeIn;
  @override
  String? get getOut;
  @override
  @JsonKey(ignore: true)
  _$$ComeInGetOutImplCopyWith<_$ComeInGetOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
