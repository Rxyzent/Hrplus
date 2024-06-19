import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/presentation/webpage/cubit/webpage_cubit.dart';
import 'package:hrplus/presentation/webpage/cubit/webpage_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebPage
    extends BasePage<WebpageCubit, WebpageBuildable, WebpageListenable> {
  const WebPage({super.key, required this.webpageUrl});

  final String webpageUrl;

  @override
  void init(BuildContext context) {
    context.read<WebpageCubit>().init(webpageUrl);
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, WebpageBuildable state) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        toolbarHeight: 30,
        title: 'Hrplus'.w(500).s(18).c(context.colors.color4),
        leading: GestureDetector(
            onTap: () => context.maybePop(),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: context.colors.color4,
            )),
      ),
      body: SafeArea(
        child: loadable(
          loading: state.loading,
          error: state.error,
          builder: () => WebViewWidget(
            controller: state.controller!,
          ),
        ),
      ),
    );
  }
}
