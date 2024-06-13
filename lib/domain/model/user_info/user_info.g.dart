// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      name: json['name'] as String?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      isLiveLocationSupported: json['isLiveLocationSupported'] as bool?,
      isForPlanshet: json['isForPlanshet'] as bool?,
      currentLanguage: json['currentLanguage'] as String?,
      notifStatus: json['notifStatus'] as bool?,
      notifsNumber: (json['notifsNumber'] as num?)?.toInt(),
      profileUrl: json['profileUrl'] as String?,
      notifUrl: json['notifUrl'] as String?,
      chartData: json['chartData'] == null
          ? null
          : ChartData.fromJson(json['chartData'] as Map<String, dynamic>),
      comeInGetOut: json['comeIn_getOut'] == null
          ? null
          : ComeInGetOut.fromJson(
              json['comeIn_getOut'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'phone': instance.phone,
      'isLiveLocationSupported': instance.isLiveLocationSupported,
      'isForPlanshet': instance.isForPlanshet,
      'currentLanguage': instance.currentLanguage,
      'notifStatus': instance.notifStatus,
      'notifsNumber': instance.notifsNumber,
      'profileUrl': instance.profileUrl,
      'notifUrl': instance.notifUrl,
      'chartData': instance.chartData,
      'comeIn_getOut': instance.comeInGetOut,
    };

_$ChartDataImpl _$$ChartDataImplFromJson(Map<String, dynamic> json) =>
    _$ChartDataImpl(
      early: (json['early'] as num?)?.toInt(),
      late: (json['late'] as num?)?.toInt(),
      dontCome: (json['dont_come'] as num?)?.toInt(),
      relax: (json['relax'] as num?)?.toInt(),
      forgot: (json['forgot'] as num?)?.toInt(),
      all: (json['all'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChartDataImplToJson(_$ChartDataImpl instance) =>
    <String, dynamic>{
      'early': instance.early,
      'late': instance.late,
      'dont_come': instance.dontCome,
      'relax': instance.relax,
      'forgot': instance.forgot,
      'all': instance.all,
    };

_$ComeInGetOutImpl _$$ComeInGetOutImplFromJson(Map<String, dynamic> json) =>
    _$ComeInGetOutImpl(
      comeIn: json['comeIn'] as String?,
      getOut: json['getOut'] as String?,
    );

Map<String, dynamic> _$$ComeInGetOutImplToJson(_$ComeInGetOutImpl instance) =>
    <String, dynamic>{
      'comeIn': instance.comeIn,
      'getOut': instance.getOut,
    };
