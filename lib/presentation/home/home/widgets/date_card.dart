import 'package:flutter/material.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
    required this.title,
    required this.dateTitle,
    required this.time,
    required this.icon,
  });

  final String title;
  final String dateTitle;
  final String time;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colors.color5,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: context.colors.color2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: icon,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    title
                        .w(500)
                        .s(13)
                        .c(context.colors.color4)
                        .copyWith(maxLines: 1, overflow: TextOverflow.ellipsis),
                    dateTitle
                        .w(500)
                        .s(7)
                        .c(context.colors.color3)
                        .copyWith(maxLines: 1, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            time
                .w(500)
                .s(34)
                .c(context.colors.color4)
                .copyWith(maxLines: 1, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
