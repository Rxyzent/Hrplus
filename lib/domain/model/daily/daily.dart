import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
class Daily with _$Daily {
  const factory Daily({
    int? status,
    String? message,
    Data? data,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) =>
      _$DailyFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    DateTime? startDate,
    DateTime? endDate,
    String? start,
    String? finish,
    String? planStart,
    String? planFinish,
    String? workingHours,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
