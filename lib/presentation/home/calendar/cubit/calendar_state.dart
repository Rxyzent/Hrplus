import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrplus/domain/model/daily/daily.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarBuildable with _$CalendarBuildable {
  const factory CalendarBuildable({
    @Default(false) loading,
    @Default(false) error,
    @Default([]) List<Daily> dataList,
    String? lastDate,
    Daily? data,
}) = _CalendarBuildable;
}

@freezed
class CalendarListenable with _$CalendarListenable {
  const factory CalendarListenable() = _CalendarListenable;
}