import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/presentation/profile/cubit/profile_cubit.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key, required this.profileContext});

  final BuildContext profileContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => profileContext.read<ProfileCubit>().logout(),
            child: Card(
              color: context.colors.white,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    width: 1,
                    color: context.colors.error,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Assets.icons.logout.svg(
                        colorFilter: ColorFilter.mode(
                            context.colors.error, BlendMode.srcIn)),
                    const SizedBox(width: 8),
                    Strings.logout.w(500).s(20).c(context.colors.error),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
