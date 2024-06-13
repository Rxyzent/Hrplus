// ignore_for_file: constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hrplus/common/gen/assets.gen.dart';

enum Language {
  UZ,
  EN,
  RU;

  static Language from(BuildContext context) {
    return Language.values.firstWhere(
      (element) => element.locale.languageCode == context.locale.languageCode,
    );
  }
}

extension LanguageExtensions on Language {
  String get name {
    switch (this) {
      case Language.UZ:
        return 'O\'zbekcha';
      case Language.EN:
        return 'English';
      case Language.RU:
        return 'Русский';
    }
  }

  SvgGenImage get icon {
    switch (this) {
      case Language.UZ:
        return Assets.icons.uz;
      case Language.EN:
        return Assets.icons.uk;
      case Language.RU:
        return Assets.icons.ru;
    }
  }

  Locale get locale {
    switch (this) {
      case Language.EN:
        return const Locale('en', 'US');
      case Language.UZ:
        return const Locale('uz', 'UZ');
      case Language.RU:
        return const Locale('ru', 'RU');
    }
  }
}
