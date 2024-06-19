import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/presentation/camera/cubit/camera_cubit.dart';
import 'package:hrplus/presentation/camera/cubit/camera_state.dart';
import 'package:hrplus/presentation/camera/widgets/image_page.dart';
import 'package:hrplus/presentation/camera/widgets/result_dialog.dart';

@RoutePage()
class CameraPage
    extends BasePage<CameraCubit, CameraBuildable, CameraListenable> {
  const CameraPage({super.key});

  @override
  Widget builder(BuildContext context, CameraBuildable state) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: loadable(
        loading: state.loading,
        error: state.error,
        builder: () => SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: 100,
                top: 80,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: context.colors.color4,
                          width: 1,
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: AspectRatio(
                          aspectRatio: state.controller!.value.aspectRatio,
                          child: CameraPreview(state.controller!)),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: deviceWidth,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: context.colors.color4.withOpacity(0.5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const SizedBox(
                        width: 48,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => context.read<CameraCubit>().takePicture(),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: context.colors.color5,
                              width: 1,
                            ),
                            color: context.colors.color4,
                          ),
                          height: 64,
                          width: 64,
                          child: Center(
                              child: Assets.icons.takePicture.svg(
                                  height: 32,
                                  width: 32,
                                  colorFilter: ColorFilter.mode(
                                      context.colors.color5, BlendMode.srcIn))),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => context.read<CameraCubit>().flipCamera(),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colors.color5,
                          ),
                          height: 48,
                          width: 48,
                          child: Center(
                              child: Assets.icons.refresh.svg(
                                  height: 24,
                                  width: 24,
                                  colorFilter: ColorFilter.mode(
                                      context.colors.color2, BlendMode.srcIn))),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: GestureDetector(
                  onTap: () => context.maybePop(),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colors.color2,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: context.colors.color5,
                    ),
                  ),
                ),
              ),
              if (state.pictureTaken) ImagePage(state: state),
              if (state.showDialog) ResultDialog(state: state),
            ],
          ),
        ),
      ),
    );
  }
}
