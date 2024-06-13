import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/presentation/home/home/location_sheet/cubit/location_cubit.dart';
import 'package:hrplus/presentation/home/home/location_sheet/cubit/location_state.dart';

class LocationBottomSheet
    extends BasePage<LocationCubit, LocationBuildable, LocationListenable> {
  const LocationBottomSheet({super.key,required this.homeContext});

  final BuildContext homeContext;
  @override
  Widget builder(BuildContext context, LocationBuildable state) {
    return Container(
      color: context.colors.color5,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () async {
              await context.read<LocationCubit>().changeLiveLocationState(homeContext);
              if (!context.mounted) return;
              Navigator.of(context).maybePop();
            },
            child: Card(
              color: context.colors.color2,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    state.locationState
                        ? Strings.locationOff
                            .w(500)
                            .s(20)
                            .c(context.colors.color5)
                        : Strings.locationOn
                            .w(500)
                            .s(20)
                            .c(context.colors.color5),
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
