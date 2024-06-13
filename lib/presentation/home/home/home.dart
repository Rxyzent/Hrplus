import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/common/router/app_router.dart';
import 'package:hrplus/presentation/home/home/cubit/home_cubit.dart';
import 'package:hrplus/presentation/home/home/cubit/home_state.dart';
import 'package:hrplus/presentation/home/home/widgets/animated_button.dart';
import 'package:hrplus/presentation/home/home/widgets/attendance_chart.dart';
import 'package:hrplus/presentation/home/home/widgets/date_card.dart';
import 'package:hrplus/presentation/home/home/location_sheet/location_sheet.dart';

@RoutePage()
class HomePage extends BasePage<HomeCubit, HomeBuildable, HomeListenable> {
  const HomePage({super.key});

  @override
  Widget builder(BuildContext context, HomeBuildable state) {
    final now = DateTime.now();
    final date = DateFormat.MMMMEEEEd(context.locale.toString()).format(now);
    final month = DateFormat.MMMM(context.locale.toString()).format(now);
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 48,
        width: 48,
        child: FittedBox(
          child: FloatingActionButton(
            heroTag: 'home_float_action_button',
            onPressed: () {
              _showLocationBottomSheet(context, state);
            },
            backgroundColor: context.colors.color2,
            child: AnimatedBorderCircle(
              color: context.colors.color2,
              animate: state.animate,
              child: Center(
                child: Assets.icons.location.svg(
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    context.colors.color5,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Strings.greeting.w(500).s(13).c(context.colors.color3),
                        const SizedBox(height: 8),
                        if (state.userInfo != null)
                          (state.userInfo!.name ?? 'Loading...')
                              .w(600)
                              .s(20)
                              .c(context.colors.color4)
                              .copyWith(
                                  maxLines: 1, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => context.router.push(const CalendarRoute()),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: context.colors.color2,
                      ),
                      child: Center(
                        child: Assets.icons.calendar.svg(
                            colorFilter: ColorFilter.mode(
                                context.colors.color5, BlendMode.srcIn)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => context.router
                        .push(WebRoute(webpageUrl: state.userInfo!.notifUrl!)),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: context.colors.color5,
                      ),
                      child: Center(
                        child: badges.Badge(
                          badgeStyle: const badges.BadgeStyle(
                            badgeColor: Colors.red,
                          ),
                          position: badges.BadgePosition.topEnd(top: -14),
                          badgeContent: state.notifNumber
                              .toString()
                              .w(500)
                              .s(12)
                              .c(Colors.white),
                          child: Assets.icons.notification.svg(
                              colorFilter: ColorFilter.mode(
                                  context.colors.color4, BlendMode.srcIn)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  date
                      .w(500)
                      .s(13)
                      .c(context.colors.color3)
                      .copyWith(maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      color: context.colors.color2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 7),
                        child: Row(
                          children: [
                            Icon(
                              size: 18,
                              Icons.location_pin,
                              color: context.colors.color5,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: (state.address ?? '')
                                  .w(500)
                                  .s(13)
                                  .c(context.colors.color5)
                                  .copyWith(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: RefreshIndicator(
                onRefresh: () => context.read<HomeCubit>().refresh(),
                child: SingleChildScrollView(
                  child: loadable(
                    loading: state.loading,
                    error: state.error,
                    builder: () => Column(
                      children: [
                        AttendanceChart(
                          chartData: state.userInfo!.chartData!,
                          state: state,
                          homeContext: context,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                                child: DateCard(
                                    title: Strings.come,
                                    dateTitle: Strings.early,
                                    time:
                                        state.userInfo!.comeInGetOut!.comeIn ??
                                            '--:--',
                                    icon: Assets.icons.downLeft.svg(
                                        height: 12,
                                        width: 12,
                                        colorFilter: ColorFilter.mode(
                                            context.colors.color5,
                                            BlendMode.srcIn)))),
                            const SizedBox(width: 16),
                            Expanded(
                                child: DateCard(
                              title: Strings.leave,
                              dateTitle: Strings.notYet,
                              time: state.userInfo!.comeInGetOut!.getOut ??
                                  '--:--',
                              icon: Assets.icons.topRight.svg(
                                  height: 12,
                                  width: 12,
                                  colorFilter: ColorFilter.mode(
                                      context.colors.color5, BlendMode.srcIn)),
                            )),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                                child: DateCard(
                                    title: Strings.didntComeYet,
                                    dateTitle: month,
                                    time:
                                        '${(state.userInfo!.chartData!.relax ?? 0) + (state.userInfo!.chartData!.dontCome ?? 0) + (state.userInfo!.chartData!.forgot ?? 0)}',
                                    icon: Assets.icons.top.svg(
                                        height: 12,
                                        width: 12,
                                        colorFilter: ColorFilter.mode(
                                            context.colors.color5,
                                            BlendMode.srcIn)))),
                            const SizedBox(width: 16),
                            Expanded(
                                child: DateCard(
                              title: Strings.comingDays,
                              dateTitle: month,
                              time:
                                  '${(state.userInfo!.chartData!.early ?? 0) + (state.userInfo!.chartData!.late ?? 0)}',
                              icon: Assets.icons.refresh.svg(
                                  height: 12,
                                  width: 12,
                                  colorFilter: ColorFilter.mode(
                                      context.colors.color5, BlendMode.srcIn)),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

void _showLocationBottomSheet(BuildContext context, HomeBuildable state) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (ctx) {
        return LocationBottomSheet(homeContext: context);
      });
}
