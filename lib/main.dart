/*
Copyright 2022 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:app_store/pages/app_page.dart';
import 'package:app_store/pages/landing.dart';
import 'package:app_store/pages/settings.dart';
import 'package:app_store/pages/user.dart';
import 'package:app_store/providers/theme_provider.dart';
import 'package:app_store/services/locales/generated_asset_loader.g.dart';
import 'package:app_store/services/locales/locales.g.dart';
import 'package:app_store/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: Locales.supported,
      fallbackLocale: const Locale("en", "US"),
      assetLoader: GeneratedAssetLoader(),
      useFallbackTranslations: true,
      path: "assets/locales",
      startLocale: const Locale("en", "US"),
      saveLocale: false,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>.value(
            value: ThemeProvider(lightTheme, false),
          ),
        ],
        child: const AppStoreHome(),
      ),
    ),
  );
}

class AppStoreHome extends StatelessWidget {
  const AppStoreHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Store',
      theme: theme(context),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Landing(),
        '/user': (context) => const User(),
        '/settings': (context) => const Settings(),
        '/app_page': (context) => const AppPage(),
      },
    );
  }
}
