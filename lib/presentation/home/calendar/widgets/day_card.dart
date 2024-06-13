import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/domain/model/daily/daily.dart';

class DayCard extends StatelessWidget {
  const DayCard({super.key, required this.data});

  final Daily data;

  @override
  Widget build(BuildContext context) {
    final cardColor = getColor(data.status!, context);
    final date = data.data!.startDate!;
    final weekday = DateFormat.E(context.locale.toString()).format(date);
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: cardColor,//selected ? context.colors.color2 : context.colors.color5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                color: context.colors.white,//selected ? context.colors.color5 : context.colors.color2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      date.day.toString().w(500).s(32).c(cardColor),
                      const SizedBox(height: 8),
                      weekday.w(500).s(16).c(cardColor),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  data.data!.start!.w(500).s(18).c(context.colors.color4).copyWith(textAlign: TextAlign.center).copyWith(textAlign: TextAlign.center),
                  const SizedBox(height: 4),
                  Strings.come.w(500).s(13).c(context.colors.color3).copyWith(textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(width: 4),
            VerticalDivider(
              width: 1,
              color: context.colors.color3,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  data.data!.finish!.w(500).s(18).c(context.colors.color4).copyWith(textAlign: TextAlign.center),
                  const SizedBox(height: 4),
                  Strings.leave.w(500).s(13).c(context.colors.color3).copyWith(textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(width: 4),
            VerticalDivider(
              width: 1,
              color: context.colors.color3,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  data.data!.workingHours!.w(500).s(18).c(context.colors.color4).copyWith(textAlign: TextAlign.center),
                  const SizedBox(height: 4),
                  Strings.workTime.w(500).s(13).c(context.colors.color3).copyWith(textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

Color getColor(int status,BuildContext context) {
  switch (status) {
    case 0: return context.colors.danger;
    case 1: return context.colors.success;
    case 2: return context.colors.success;
    case 3: return context.colors.info;
    case 4: return context.colors.success;
    case 5: return context.colors.muted;
    case 6: return context.colors.warning;
    default:{
      return context.colors.color2;
    }
  }
}
