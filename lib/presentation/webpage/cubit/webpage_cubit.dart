import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/presentation/webpage/cubit/webpage_state.dart';
import 'package:injectable/injectable.dart';
import 'package:webview_flutter/webview_flutter.dart';

@injectable
class WebpageCubit extends BaseCubit<WebpageBuildable, WebpageListenable> {
  WebpageCubit() : super(const WebpageBuildable());

  void init(String url) {
    final controller = WebViewController();
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(Uri.parse(url));
    build((buildable) => buildable.copyWith(controller:controller ,loading:false));
  }
}