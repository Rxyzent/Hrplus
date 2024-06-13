import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageBuildable with _$LanguageBuildable {
  const factory LanguageBuildable({
    String? currentLanguage,
}) = _LanguageBuildable;
}

@freezed
class LanguageListenable with _$LanguageListenable {
  const factory LanguageListenable() = _LanguageListenable;
}