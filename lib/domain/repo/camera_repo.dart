import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/photo/photo.dart';

abstract class CameraRepo{
  Future<void> createComeInGetOut(String type,Location location);

  Future<void> saveManagerPhoto(Photo photo);
}

