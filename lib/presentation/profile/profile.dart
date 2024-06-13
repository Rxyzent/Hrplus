import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/common/router/app_router.dart';
import 'package:hrplus/common/widgets/custom_switch.dart';
import 'package:hrplus/presentation/main/cubit/main_cubit.dart';
import 'package:hrplus/presentation/profile/cubit/profile_cubit.dart';
import 'package:hrplus/presentation/profile/cubit/profile_state.dart';
import 'package:hrplus/presentation/profile/widgets/contact_sheet.dart';
import 'package:hrplus/presentation/profile/language_sheet/language_sheet.dart';
import 'package:hrplus/presentation/profile/widgets/logout_sheet.dart';

@RoutePage()
class ProfilePage
    extends BasePage<ProfileCubit, ProfileBuildable, ProfileListenable> {
  const ProfilePage({super.key});

  @override
  void listener(BuildContext context, ProfileListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case ProfileEffect.logout:
        context.router.replace(const SplashRoute());
    }
  }

  @override
  Widget builder(BuildContext context, ProfileBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: loadable(
          loading: state.loading,
          error: state.error,
          builder: () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 32),
                      const Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 42,
                            child: ClipOval(
                              child: SizedBox(
                                height: 84,
                                width: 84,
                                child: state.image.isNotEmpty
                                    ? CachedNetworkImage(
                                        imageUrl: state.image,
                                        fit: BoxFit.cover,
                                      )
                                    : Assets.icons.avatar.image(
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          state.name.w(600).s(20).c(context.colors.color4),
                          const SizedBox(height: 8),
                          state.phone.w(500).s(16).c(context.colors.color4),
                        ],
                      ),
                      const Spacer(),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: GestureDetector(
                          onTap: () => context.router
                              .push(WebRoute(webpageUrl: state.profileUrl)),
                          child: Card(
                            margin: EdgeInsets.zero,
                            color: context.colors.color2,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Assets.icons.profile.svg(
                                  colorFilter: ColorFilter.mode(
                                      context.colors.color5, BlendMode.srcIn)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  _ListElement(
                    icon: Assets.icons.notification.svg(
                        colorFilter: ColorFilter.mode(
                            context.colors.color4, BlendMode.srcIn)),
                    title: Strings.notification,
                    suffix: CustomSwitch(
                      activeColor: context.colors.color2,
                      inActiveColor: context.colors.color3,
                      toogleColor: context.colors.color5,
                      value: state.notificationState,
                      onChanged: (bool value) {
                        context.read<ProfileCubit>().changeNotification(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  _ListElement(
                    onPress: () {
                      _showLanguageBottomSheet(context, state);
                    },
                    icon: Assets.icons.language.svg(
                        colorFilter: ColorFilter.mode(
                            context.colors.color4, BlendMode.srcIn)),
                    title: Strings.lang,
                    suffix: context.locale.languageCode == 'uz'
                        ? Expanded(
                            child: Strings.uzbek
                                .w(400)
                                .s(20)
                                .c(context.colors.color3)
                                .copyWith(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ))
                        : context.locale.languageCode == 'ru'
                            ? Expanded(
                                child: Strings.russian
                                    .w(400)
                                    .s(20)
                                    .c(context.colors.color3)
                                    .copyWith(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ))
                            : const SizedBox.shrink(),
                  ),
                  const SizedBox(height: 8),
                  _ListElement(
                    onPress: () {
                      _showLContactBottomSheet(context);
                    },
                    icon: Assets.icons.phone.svg(
                        colorFilter: ColorFilter.mode(
                            context.colors.color4, BlendMode.srcIn)),
                    title: Strings.connect,
                    suffix: null,
                  ),
                  const SizedBox(height: 8),
                  _ListElement(
                    icon: Assets.icons.theme.svg(
                        colorFilter: ColorFilter.mode(
                            context.colors.color4, BlendMode.srcIn)),
                    title: Strings.theme,
                    suffix: CustomSwitch(
                      activeColor: context.colors.color6,
                      inActiveColor: context.colors.color7,
                      toogleColor: context.colors.color5,
                      activeIcon: Assets.icons.sun.svg(),
                      inActiveIcon: Assets.icons.moon.svg(),
                      value: state.themeState,
                      onChanged: (bool value) {
                        context.read<ProfileCubit>().changeTheme(value);
                        context.read<MainCubit>().changeTheme(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  state.isTabletMode
                      ? _ListElement(
                          onPress: () {
                            _showLogoutBottomSheet(context);
                          },
                          icon: Assets.icons.logout.svg(
                              colorFilter: ColorFilter.mode(
                                  context.colors.color4, BlendMode.srcIn)),
                          title: Strings.logout,
                          suffix: null,
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ListElement extends StatelessWidget {
  const _ListElement({
    required this.icon,
    required this.title,
    required this.suffix,
    this.onPress,
  });

  final Widget icon;
  final String title;
  final Widget? suffix;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: context.colors.color5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              icon,
              const SizedBox(width: 12),
              title.w(500).s(20).c(context.colors.color4),
              const Spacer(),
              const SizedBox(width: 4),
              suffix ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

class RowData {
  final Widget icon;
  final String title;
  final Widget? suffix;

  RowData({
    required this.icon,
    required this.title,
    required this.suffix,
  });
}

void _showLanguageBottomSheet(BuildContext context, ProfileBuildable state) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (ctx) {
        return const LanguageBottomSheet();
      });
}

void _showLContactBottomSheet(BuildContext context) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (ctx) {
        return const ContactBottomSheet();
      });
}

void _showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (ctx) {
        return LogoutBottomSheet(profileContext: context);
      });
}
