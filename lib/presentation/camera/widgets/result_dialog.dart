import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/presentation/camera/cubit/camera_cubit.dart';
import 'package:hrplus/presentation/camera/cubit/camera_state.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({super.key, required this.state});

  final CameraBuildable state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.color4.withOpacity(0.7),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Center(
        child: Card(
          margin: EdgeInsets.zero,
          color: context.colors.color5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: state.requestMessage != null
                      ? state.requestMessage!.w(400).s(20).c(context.colors.color4)
                      : const CircularProgressIndicator(),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<CameraCubit>().showDialog(false);
                        },
                        child: 'Try again'.w(500).s(16).c(context.colors.color2),
                      ),
                    ),
                    VerticalDivider(
                      width: 1,
                      color: context.colors.color2,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).maybePop();
                        },
                        child: 'Close'.w(500).s(16).c(context.colors.color2),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
