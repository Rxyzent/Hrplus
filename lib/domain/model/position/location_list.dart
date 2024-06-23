import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_list.freezed.dart';
part 'location_list.g.dart';

@freezed
class LocationList with _$LocationList {
  const factory LocationList({
    @JsonKey(name: 'mobile_id')
    String? mobileId,
    List<Location>? location,
  }) = _LocationList;

  factory LocationList.fromJson(Map<String, dynamic> json) =>
      _$LocationListFromJson(json);

}

@freezed
class Location with _$Location {
  const factory Location({
    double? lat,
    double? lon,
    int? date,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

