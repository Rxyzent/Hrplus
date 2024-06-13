import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:hrplus/presentation/auth/auth/auth.dart';
import 'package:hrplus/presentation/auth/splash/splash_page.dart';
import 'package:hrplus/presentation/camera/camera.dart';
import 'package:hrplus/presentation/home/calendar/calendar_page.dart';
import 'package:hrplus/presentation/home/home/home.dart';
import 'package:hrplus/presentation/main/main_page.dart';
import 'package:hrplus/presentation/profile/profile.dart';
import 'package:hrplus/presentation/webpage/webpage.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: MainRoute.page, children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: ProfileRoute.page),
    ]),
    AutoRoute(page: CameraRoute.page),
    AutoRoute(page: CalendarRoute.page),
    AutoRoute(page: WebRoute.page),
  ];
}
