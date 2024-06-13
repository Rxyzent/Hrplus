// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarBuildable {
  dynamic get loading => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  List<Daily> get dataList => throw _privateConstructorUsedError;
  String? get lastDate => throw _privateConstructorUsedError;
  Daily? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarBuildableCopyWith<CalendarBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarBuildableCopyWith<$Res> {
  factory $CalendarBuildableCopyWith(
          CalendarBuildable value, $Res Function(CalendarBuildable) then) =
      _$CalendarBuildableCopyWithImpl<$Res, CalendarBuildable>;
  @useResult
  $Res call(
      {dynamic loading,
      dynamic error,
      List<Daily> dataList,
      String? lastDate,
      Daily? data});

  $DailyCopyWith<$Res>? get data;
}

/// @nodoc
class _$CalendarBuildableCopyWithImpl<$Res, $Val extends CalendarBuildable>
    implements $CalendarBuildableCopyWith<$Res> {
  _$CalendarBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? dataList = null,
    Object? lastDate = freezed,
    Object? data = freezed,
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
      dataList: null == dataList
          ? _value.dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
      lastDate: freezed == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Daily?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DailyCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalendarBuildableImplCopyWith<$Res>
    implements $CalendarBuildableCopyWith<$Res> {
  factory _$$CalendarBuildableImplCopyWith(_$CalendarBuildableImpl value,
          $Res Function(_$CalendarBuildableImpl) then) =
      __$$CalendarBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic loading,
      dynamic error,
      List<Daily> dataList,
      String? lastDate,
      Daily? data});

  @override
  $DailyCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CalendarBuildableImplCopyWithImpl<$Res>
    extends _$CalendarBuildableCopyWithImpl<$Res, _$CalendarBuildableImpl>
    implements _$$CalendarBuildableImplCopyWith<$Res> {
  __$$CalendarBuildableImplCopyWithImpl(_$CalendarBuildableImpl _value,
      $Res Function(_$CalendarBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? dataList = null,
    Object? lastDate = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CalendarBuildableImpl(
      loading: freezed == loading ? _value.loading! : loading,
      error: freezed == error ? _value.error! : error,
      dataList: null == dataList
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
      lastDate: freezed == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Daily?,
    ));
  }
}

/// @nodoc

class _$CalendarBuildableImpl implements _CalendarBuildable {
  const _$CalendarBuildableImpl(
      {this.loading = false,
      this.error = false,
      final List<Daily> dataList = const [],
      this.lastDate,
      this.data})
      : _dataList = dataList;

  @override
  @JsonKey()
  final dynamic loading;
  @override
  @JsonKey()
  final dynamic error;
  final List<Daily> _dataList;
  @override
  @JsonKey()
  List<Daily> get dataList {
    if (_dataList is EqualUnmodifiableListView) return _dataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataList);
  }

  @override
  final String? lastDate;
  @override
  final Daily? data;

  @override
  String toString() {
    return 'CalendarBuildable(loading: $loading, error: $error, dataList: $dataList, lastDate: $lastDate, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarBuildableImpl &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._dataList, _dataList) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_dataList),
      lastDate,
      data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarBuildableImplCopyWith<_$CalendarBuildableImpl> get copyWith =>
      __$$CalendarBuildableImplCopyWithImpl<_$CalendarBuildableImpl>(
          this, _$identity);
}

abstract class _CalendarBuildable implements CalendarBuildable {
  const factory _CalendarBuildable(
      {final dynamic loading,
      final dynamic error,
      final List<Daily> dataList,
      final String? lastDate,
      final Daily? data}) = _$CalendarBuildableImpl;

  @override
  dynamic get loading;
  @override
  dynamic get error;
  @override
  List<Daily> get dataList;
  @override
  String? get lastDate;
  @override
  Daily? get data;
  @override
  @JsonKey(ignore: true)
  _$$CalendarBuildableImplCopyWith<_$CalendarBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarListenable {}

/// @nodoc
abstract class $CalendarListenableCopyWith<$Res> {
  factory $CalendarListenableCopyWith(
          CalendarListenable value, $Res Function(CalendarListenable) then) =
      _$CalendarListenableCopyWithImpl<$Res, CalendarListenable>;
}

/// @nodoc
class _$CalendarListenableCopyWithImpl<$Res, $Val extends CalendarListenable>
    implements $CalendarListenableCopyWith<$Res> {
  _$CalendarListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CalendarListenableImplCopyWith<$Res> {
  factory _$$CalendarListenableImplCopyWith(_$CalendarListenableImpl value,
          $Res Function(_$CalendarListenableImpl) then) =
      __$$CalendarListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarListenableImplCopyWithImpl<$Res>
    extends _$CalendarListenableCopyWithImpl<$Res, _$CalendarListenableImpl>
    implements _$$CalendarListenableImplCopyWith<$Res> {
  __$$CalendarListenableImplCopyWithImpl(_$CalendarListenableImpl _value,
      $Res Function(_$CalendarListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalendarListenableImpl implements _CalendarListenable {
  const _$CalendarListenableImpl();

  @override
  String toString() {
    return 'CalendarListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalendarListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CalendarListenable implements CalendarListenable {
  const factory _CalendarListenable() = _$CalendarListenableImpl;
}
