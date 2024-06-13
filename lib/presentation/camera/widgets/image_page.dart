import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/common/widgets/common_button.dart';
import 'package:hrplus/presentation/camera/cubit/camera_cubit.dart';
import 'package:hrplus/presentation/camera/cubit/camera_state.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({
    super.key,
    required this.state,
  });

  final CameraBuildable state;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 82,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: context.colors.color4.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: state.imageFile != null
                          ? Image.file(
                              File(state.imageFile!.path),
                              fit: BoxFit.fitWidth,
                            )
                          : Assets.icons.cameraImage
                              .image(fit: BoxFit.fitWidth),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 8,
                    child: GestureDetector(
                      onTap: () =>
                          context.read<CameraCubit>().retakePicture(),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.colors.color5,
                        ),
                        height: 48,
                        width: 48,
                        child: Center(
                            child: Assets.icons.refresh
                                .svg(height: 24, width: 24,colorFilter:
                            ColorFilter.mode(context.colors.color2, BlendMode.srcIn))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: CommonButton.elevated(
                    onPressed: () => context
                        .read<CameraCubit>()
                        .createComeInGetOut(ComeInGetOutType.keldim.key),
                    text: Strings.comeIn,
                    backgroundColor: context.colors.color5,
                    textColor: context.colors.color2,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CommonButton.elevated(
                    onPressed: () => context
                        .read<CameraCubit>()
                        .createComeInGetOut(ComeInGetOutType.ketdim.key),
                    text: Strings.getOut,
                    backgroundColor: context.colors.color5,
                    textColor: context.colors.color2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: CommonButton.elevated(
                    onPressed: () => context
                        .read<CameraCubit>()
                        .createComeInGetOut(ComeInGetOutType.navKeldim.key),
                    text: Strings.navComeIn,
                    backgroundColor: context.colors.color5,
                    textColor: context.colors.color2,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CommonButton.elevated(
                    onPressed: () => context
                        .read<CameraCubit>()
                        .createComeInGetOut(ComeInGetOutType.navKetdim.key),
                    text: Strings.navGetOut,
                    backgroundColor: context.colors.color5,
                    textColor: context.colors.color2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
