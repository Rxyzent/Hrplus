import 'package:hrplus/data/camera/camera_api.dart';
import 'package:hrplus/domain/model/location/location.dart';
import 'package:hrplus/domain/model/photo/photo.dart';
import 'package:hrplus/domain/repo/camera_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CameraRepo)
class CameraRepoImpl extends CameraRepo{
  CameraRepoImpl(this._api);

  final CameraApi _api;

  @override
  Future<void> createComeInGetOut(String type, Location location) async{
    await _api.createComeInGetOut(type, location);
  }

  @override
  Future<void> saveManagerPhoto(Photo photo) async{
   await _api.saveManagerPhoto(photo);
  }
}