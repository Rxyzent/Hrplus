import 'package:hrplus/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';

import 'language_state.dart';

@injectable
class LanguageCubit extends BaseCubit<LanguageBuildable, LanguageListenable> {
  LanguageCubit() : super(const LanguageBuildable());

  void changeLanguage(String language) {
    build((buildable) => buildable.copyWith(currentLanguage: language));
  }
}