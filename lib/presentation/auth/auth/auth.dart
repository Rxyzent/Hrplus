import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_page.dart';
import 'package:hrplus/common/extensions/text_extensions.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/router/app_router.dart';
import 'package:hrplus/common/widgets/common_button.dart';
import 'package:hrplus/common/widgets/common_text_filed.dart';
import 'package:hrplus/presentation/auth/auth/cubit/auth_cubit.dart';
import 'package:hrplus/presentation/auth/auth/cubit/auth_state.dart';

@RoutePage()
class AuthPage extends BasePage<AuthCubit, AuthBuildable, AuthListenable> {
  const AuthPage({super.key});

  @override
  void listener(BuildContext context, AuthListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case AuthEffect.success:
        context.router.replaceAll([const MainRoute()]);
        break;
      case AuthEffect.error:
        return;
    }
  }

  @override
  Widget builder(BuildContext context, AuthBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Expanded(flex: 2, child: SizedBox()),
              Assets.icons.logoPng.image(),
              const Expanded(flex: 1, child: SizedBox()),
              if (state.deviceError != null)
                state.deviceError!.w(400).s(14).c(context.colors.error),
              const SizedBox(height: 16),
              Semantics(
                label: 'Phone number',
                child: CommonTextField(
                  onFocusChanged: (focused) {},
                  background: context.colors.color5,
                  errorText: state.phoneError,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: '+998 '.w(400).s(20).c(context.colors.color4),
                  ),
                  mask: '## ### ## ##',
                  keyboardType: TextInputType.number,
                  onChanged: (number) {
                    context.read<AuthCubit>().changePhoneNumber(number);
                  },
                ),
              ),
              const SizedBox(height: 16),
              Semantics(
                label: 'Password',
                child: CommonTextField(
                  hint: 'Parol',
                  errorText: state.passwordError,
                  obscureText: true,
                  background: context.colors.color5,
                  onChanged: (password) {
                    context.read<AuthCubit>().changePassword(password);
                  },
                ),
              ),
              const Expanded(flex: 3, child: SizedBox()),
              CommonButton.elevated(
                onPressed: () {
                  context.read<AuthCubit>().login();
                },
                loading: state.loading,
                enabled: (state.password ?? '').isNotEmpty &&
                    (state.phoneNumber ?? '').isNotEmpty &&
                    (state.phoneNumber ?? '').length == 9,
                backgroundColor: context.colors.color2,
                textColor: context.colors.color5,
                text: 'Kirish',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
