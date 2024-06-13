import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'webpage_state.freezed.dart';

@freezed
class WebpageBuildable with _$WebpageBuildable {
  const factory WebpageBuildable({
    @Default(true) bool loading,
    @Default(false) bool error,
    WebViewController? controller,
}) = _WebpageBuildable;
}

@freezed
class WebpageListenable with _$WebpageListenable {
  const factory WebpageListenable() = _WebpageListenable;
}