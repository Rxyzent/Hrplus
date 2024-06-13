import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrplus/domain/model/user_info/user_info.dart';
import 'package:hrplus/presentation/home/home/widgets/attendance_chart.dart';

part 'home_state.freezed.dart';

@freezed
class HomeBuildable with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(false) loading,
    @Default(false) error,
    @Default(false) animate,
    @Default(0) int notifNumber,
    SingleChartData? singleChartData,
    String? address,
    DateTime? dateTime,
    UserInfo? userInfo,
}) = _HomeBuildable;
}

@freezed
class HomeListenable with _$HomeListenable {
  const factory HomeListenable() = _HomeListenable;
}