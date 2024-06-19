import 'dart:io';

import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_state.freezed.dart';

@freezed
class CameraBuildable with _$CameraBuildable {
  const factory CameraBuildable({
    @Default(true) bool loading,
    @Default(false) bool error,
    @Default(false) isInitialized,
    @Default(false) pictureTaken,
    @Default(false) showDialog,
    @Default(false) sendingRequest,
    String? requestMessage,
    CameraController? controller,
    List<CameraDescription>? cameras,
    XFile? imageFile,
}) = _CameraBuildable;
}

@freezed
class CameraListenable with _$CameraListenable {
  const factory CameraListenable() = _CameraListenable;
}


enum ComeInGetOutType {
  keldim('KELDIM'),
  ketdim('KETDIM'),
  navKeldim('NAV KELDIM'),
  navKetdim('NAV KETDIM');

  const ComeInGetOutType(this.key);

  final String key;
}