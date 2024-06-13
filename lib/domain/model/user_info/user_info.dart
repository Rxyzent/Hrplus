// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    String? name,
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
    @JsonKey(name: 'comeIn_getOut')
    ComeInGetOut? comeInGetOut,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

@freezed
class ChartData with _$ChartData {
  const factory ChartData({
    int? early,
    int? late,
    @JsonKey(name: 'dont_come')
    int? dontCome,
    int? relax,
    int? forgot,
    int? all,
  }) = _ChartData;

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);
}

@freezed
class ComeInGetOut with _$ComeInGetOut {
  const factory ComeInGetOut({
    String? comeIn,
    String? getOut,
  }) = _ComeInGetOut;

  factory ComeInGetOut.fromJson(Map<String, dynamic> json) =>
      _$ComeInGetOutFromJson(json);
}
