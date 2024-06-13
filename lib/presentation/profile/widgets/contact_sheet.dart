import 'package:flutter/material.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';

class ContactBottomSheet extends StatelessWidget {
  const ContactBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.color5,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            color: context.colors.color2,
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),

            ),
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "+998 90 123 45 67".w(500).s(20).c(context.colors.color5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
