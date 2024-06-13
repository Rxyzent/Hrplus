import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/domain/model/language/language.dart';
import 'package:hrplus/presentation/profile/language_sheet/cubit/language_cubit.dart';
import 'package:hrplus/presentation/profile/language_sheet/cubit/language_state.dart';

class LanguageBottomSheet extends BasePage<LanguageCubit,LanguageBuildable,LanguageListenable> {
  const LanguageBottomSheet({super.key});


  @override
  void init(BuildContext context) {
    context.read<LanguageCubit>().changeLanguage(context.locale.languageCode);
    super.init(context);
  }

  @override
  Widget builder(BuildContext context,LanguageBuildable state) {
    return Container(
      color: context.colors.color5,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap:(){
              context.read<LanguageCubit>().changeLanguage('uz');
              context.setLocale(const Locale('uz','UZ'));
            },
            child: Card(
              color: state.currentLanguage == 'uz' ? context.colors.color2 : context.colors.color5,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Assets.icons.uz.svg(),
                    const SizedBox(width: 8),
                    Strings.uzbek.w(500).s(20).c(state.currentLanguage == 'uz' ? context.colors.color5 : context.colors.color2),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              context.read<LanguageCubit>().changeLanguage('en');
              context.setLocale(const Locale('en','US'));
            },
            child: Card(
              color: state.currentLanguage == 'en' ? context.colors.color2 : context.colors.color5,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Assets.icons.uk.svg(),
                    const SizedBox(width: 8),
                    Strings.english.toString().w(500).s(20).c(state.currentLanguage == 'en' ? context.colors.color5 : context.colors.color2),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              context.read<LanguageCubit>().changeLanguage('ru');
              context.setLocale(const Locale('ru','RU'));
            },
            child: Card(
              color: state.currentLanguage == 'ru' ? context.colors.color2 : context.colors.color5,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Assets.icons.ru.svg(),
                    const SizedBox(width: 8),
                    Strings.russian.w(500).s(20).c(state.currentLanguage == 'ru' ? context.colors.color5 : context.colors.color2),
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
