import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/router/app_router.dart';
import 'package:hrplus/presentation/auth/splash/cubit/splash_cubit.dart';
import 'package:hrplus/presentation/auth/splash/cubit/splash_state.dart';

@RoutePage()
class SplashPage
    extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void listener(BuildContext context, SplashListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case SplashEffect.login:
        context.router.replace(const AuthRoute());
        break;
      case SplashEffect.home:
        context.router.replace(const MainRoute());
        break;
    }
  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Assets.icons.logoPng.image(),
        ),
      ),
    );
  }
}
