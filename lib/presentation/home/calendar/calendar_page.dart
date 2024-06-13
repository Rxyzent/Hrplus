import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/presentation/home/calendar/cubit/calendar_cubit.dart';
import 'package:hrplus/presentation/home/calendar/cubit/calendar_state.dart';
import 'package:hrplus/presentation/home/calendar/widgets/calendar.dart';
import 'package:hrplus/presentation/home/calendar/widgets/day_card.dart';

@RoutePage()
class CalendarPage
    extends BasePage<CalendarCubit, CalendarBuildable, CalendarListenable> {
  const CalendarPage({super.key});

  @override
  Widget builder(BuildContext context, CalendarBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: context.maybePop,
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: context.colors.color4,
                      ),
                    ),
                    const Spacer(),
                    Strings.calendart.w(600).s(20).c(context.colors.color4),
                    const Spacer(),
                    const SizedBox(width: 24),
                  ],
                ),
                const SizedBox(height: 28),
                const Calendar(),
                const SizedBox(height: 16),
                Strings.allDays.w(600).s(20).c(context.colors.color4),
                const SizedBox(height: 16),
                loadable(
                  loading: state.loading,
                  error: state.error,
                  builder:() => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.dataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DayCard(data: state.dataList[index],);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 8);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
