// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelImplAdapter extends TypeAdapter<_$UserModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserModelImpl(
      id: fields[0] as int?,
      image: fields[1] as String?,
      phoneNumber: fields[2] as String?,
      fullName: fields[3] as String?,
      notifUrl: fields[4] as String?,
      profileUrl: fields[5] as String?,
      isTablet: fields[6] as bool?,
      liveLocation: fields[7] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserModelImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.fullName)
      ..writeByte(4)
      ..write(obj.notifUrl)
      ..writeByte(5)
      ..write(obj.profileUrl)
      ..writeByte(6)
      ..write(obj.isTablet)
      ..writeByte(7)
      ..write(obj.liveLocation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      phoneNumber: json['phone_number'] as String?,
      fullName: json['full_name'] as String?,
      notifUrl: json['notif_url'] as String?,
      profileUrl: json['profile_url'] as String?,
      isTablet: json['is_tablet'] as bool?,
      liveLocation: json['live_location'] as bool?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'phone_number': instance.phoneNumber,
      'full_name': instance.fullName,
      'notif_url': instance.notifUrl,
      'profile_url': instance.profileUrl,
      'is_tablet': instance.isTablet,
      'live_location': instance.liveLocation,
    };
