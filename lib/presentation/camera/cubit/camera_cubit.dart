import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/common/utils/geolocator.dart';
import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/photo/photo.dart';
import 'package:hrplus/domain/repo/camera_repo.dart';
import 'package:hrplus/presentation/camera/cubit/camera_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class CameraCubit extends BaseCubit<CameraBuildable, CameraListenable> {
  CameraCubit(this._repo, this._locationService)
      : super(const CameraBuildable()) {
    _init();
  }

  final CameraRepo _repo;
  final LocationService _locationService;

  void _init() async {
    await _createController();
    await _initializeController();
    build((buildable) => buildable.copyWith(loading: false, error: false));
  }

  Future<void> _createController() async {
    final cameras = await availableCameras();
    final controller = CameraController(
      cameras.first,
      ResolutionPreset.medium,
      enableAudio: false,
    );
    await controller.setFlashMode(FlashMode.off);
    build((buildable) =>
        buildable.copyWith(cameras: cameras, controller: controller));
  }

  Future<void> _initializeController() async {
    await buildable.controller!.initialize();
    await buildable.controller!
        .lockCaptureOrientation(DeviceOrientation.portraitUp);
    build((buildable) => buildable.copyWith(isInitialized: true));
  }

  Future<void> takePicture() async {
    if (!buildable.isInitialized) {
      return;
    }
    if (buildable.controller!.value.isTakingPicture) {
      return;
    }
    try {
      final picture = await buildable.controller!.takePicture();
      build((buildable) =>
          buildable.copyWith(imageFile: picture, pictureTaken: true));
    } on CameraException catch (e) {
      debugPrint('Error occured while taking picture: $e');
      return;
    }
  }

  Future<void> flipCamera() async {
    final currentLensDirection =
        buildable.controller!.description.lensDirection;
    final nextLensDirection = currentLensDirection == CameraLensDirection.front
        ? CameraLensDirection.back
        : CameraLensDirection.front;
    final nextCamera = buildable.cameras!.firstWhere(
      (camera) => camera.lensDirection == nextLensDirection,
      orElse: () => buildable.cameras!.first,
    );
    final newController = CameraController(
      nextCamera,
      ResolutionPreset.high,
      enableAudio: false,
    );
    await buildable.controller!.dispose();
    await newController.initialize();
    build((buildable) => buildable.copyWith(controller: newController));
  }

  void retakePicture() {
    build((buildable) => buildable.copyWith(pictureTaken: false));
  }

  void createComeInGetOut(String type) async {
    build((buildable) => buildable.copyWith(showDialog: true));
    final location = await _locationService.getCurrentLocation();
    callable(
        future: _repo.createComeInGetOut(
          type,
          Location(lat: '${location?.latitude}', lon: '${location?.longitude}'),
        ),
        buildOnError: (error) {
          final dioError = error as DioException;
          var requestMessage = '';
          if(dioError.response?.statusCode == 410){
            requestMessage = 'Not near organization';
          }else if(dioError.response?.statusCode == 404){
            requestMessage = 'User not found';
          }else if(dioError.response?.statusCode == 404){
            requestMessage = 'Try again later';
          }
          return buildable.copyWith(requestMessage: requestMessage,sendingRequest: false);
        },
        buildOnDone: () {
          _sendPhoto();
          return buildable.copyWith(requestMessage: 'Success',sendingRequest: false);
        });
  }

  void showDialog(bool value){
    build((buildable) => buildable.copyWith(showDialog:value));
  }

  void _sendPhoto() async {
    final imageBytes = await buildable.imageFile!.readAsBytes();
    final base64Image = base64Encode(imageBytes);
    final imageFormat = buildable.imageFile!.path.split(".").last;
    callable(
      future: _repo.saveManagerPhoto(
        Photo(base64Image, imageFormat),
      ),
    );
  }
}

enum ComeInGetOutRequestEffect {
  success,
  notNear,
}
