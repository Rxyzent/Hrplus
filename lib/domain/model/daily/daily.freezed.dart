// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call({int? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DailyImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl({this.status, this.message, this.data});

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'Daily(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {final int? status,
      final String? message,
      final Data? data}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get start => throw _privateConstructorUsedError;
  String? get finish => throw _privateConstructorUsedError;
  String? get planStart => throw _privateConstructorUsedError;
  String? get planFinish => throw _privateConstructorUsedError;
  String? get workingHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {DateTime? startDate,
      DateTime? endDate,
      String? start,
      String? finish,
      String? planStart,
      String? planFinish,
      String? workingHours});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? start = freezed,
    Object? finish = freezed,
    Object? planStart = freezed,
    Object? planFinish = freezed,
    Object? workingHours = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      finish: freezed == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as String?,
      planStart: freezed == planStart
          ? _value.planStart
          : planStart // ignore: cast_nullable_to_non_nullable
              as String?,
      planFinish: freezed == planFinish
          ? _value.planFinish
          : planFinish // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startDate,
      DateTime? endDate,
      String? start,
      String? finish,
      String? planStart,
      String? planFinish,
      String? workingHours});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? start = freezed,
    Object? finish = freezed,
    Object? planStart = freezed,
    Object? planFinish = freezed,
    Object? workingHours = freezed,
  }) {
    return _then(_$DataImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      finish: freezed == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as String?,
      planStart: freezed == planStart
          ? _value.planStart
          : planStart // ignore: cast_nullable_to_non_nullable
              as String?,
      planFinish: freezed == planFinish
          ? _value.planFinish
          : planFinish // ignore: cast_nullable_to_non_nullable
              as String?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.startDate,
      this.endDate,
      this.start,
      this.finish,
      this.planStart,
      this.planFinish,
      this.workingHours});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? start;
  @override
  final String? finish;
  @override
  final String? planStart;
  @override
  final String? planFinish;
  @override
  final String? workingHours;

  @override
  String toString() {
    return 'Data(startDate: $startDate, endDate: $endDate, start: $start, finish: $finish, planStart: $planStart, planFinish: $planFinish, workingHours: $workingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.finish, finish) || other.finish == finish) &&
            (identical(other.planStart, planStart) ||
                other.planStart == planStart) &&
            (identical(other.planFinish, planFinish) ||
                other.planFinish == planFinish) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, start,
      finish, planStart, planFinish, workingHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final DateTime? startDate,
      final DateTime? endDate,
      final String? start,
      final String? finish,
      final String? planStart,
      final String? planFinish,
      final String? workingHours}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get start;
  @override
  String? get finish;
  @override
  String? get planStart;
  @override
  String? get planFinish;
  @override
  String? get workingHours;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
