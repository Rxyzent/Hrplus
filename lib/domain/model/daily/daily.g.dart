// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      start: json['start'] as String?,
      finish: json['finish'] as String?,
      planStart: json['planStart'] as String?,
      planFinish: json['planFinish'] as String?,
      workingHours: json['workingHours'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'start': instance.start,
      'finish': instance.finish,
      'planStart': instance.planStart,
      'planFinish': instance.planFinish,
      'workingHours': instance.workingHours,
    };
