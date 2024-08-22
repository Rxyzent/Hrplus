import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/router/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ProfileRoute(),
      ],
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.colors.color2,
        onPressed: () {
          context.router.push(const CameraRoute());
        },
        child: Semantics(
          label: 'Camera',
          child: Assets.icons.camera.svg(
              colorFilter:
                  ColorFilter.mode(context.colors.color5, BlendMode.srcIn)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            backgroundColor: context.colors.color5,
            showUnselectedLabels: true,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            unselectedItemColor: context.colors.color3,
            selectedItemColor: context.colors.color4,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.homeInacative.svg(
                    colorFilter: ColorFilter.mode(
                        context.colors.color3, BlendMode.srcIn)),
                activeIcon: Assets.icons.homeActive.svg(
                    colorFilter: ColorFilter.mode(
                        context.colors.color4, BlendMode.srcIn)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.profileInactive.svg(
                    colorFilter: ColorFilter.mode(
                        context.colors.color3, BlendMode.srcIn)),
                activeIcon: Assets.icons.profileActive.svg(
                    colorFilter: ColorFilter.mode(
                        context.colors.color4, BlendMode.srcIn)),
                label: 'Profile',
              ),
            ]);
      },
    );
  }
}
