import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrplus/common/base/base_builder.dart';
import 'package:hrplus/common/di/injection.dart';
import 'package:hrplus/common/extensions/theme_extensions.dart';
import 'package:hrplus/common/gen/assets.gen.dart';
import 'package:hrplus/common/gen/strings.dart';
import 'package:hrplus/common/utils/fixed_csv_asset_loader.dart';
import 'package:hrplus/common/widgets/display/display_widget.dart';
import 'package:hrplus/presentation/main/cubit/main_cubit.dart';
import 'package:hrplus/presentation/main/cubit/main_state.dart';

import 'common/router/app_router.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await configureDependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the onMessage!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Got a message whilst in the onMessageOpenedApp!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      EasyLocalization(
        supportedLocales: Strings.supportedLocales,
        path: Assets.localization.translations,
        fallbackLocale: Strings.supportedLocales.first,
        startLocale: Strings.supportedLocales.first,
        assetLoader: FixedCsvAssetLoader(),
        child: const MyApp(),
      ),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainCubit>(),
      child: BaseBuilder<MainCubit, MainBuildable, MainListenable>(
        properties: (buildable) => [buildable.themeMode],
        builder: (context, state) {
          return DisplayWidget(
            child: MaterialApp.router(
              title: 'Hrplus',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              routerConfig: getIt<AppRouter>().config(),
              color: context.colors.primary,
              locale: context.locale,
              theme: context.lightTheme,
              darkTheme: context.darkTheme,
              themeMode: state.themeMode ? ThemeMode.light : ThemeMode.dark,
            ),
          );
        },
      ),
    );
  }
}
