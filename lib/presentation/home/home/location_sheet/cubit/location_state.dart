import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

@freezed
class LocationBuildable with _$LocationBuildable {
  const factory LocationBuildable({
    @Default(false) loading,
    @Default(false) bool locationState,
}) = _LocationBuildable;
}

@freezed
class LocationListenable with _$LocationListenable {
  const factory LocationListenable() = _LocationListenable;
}