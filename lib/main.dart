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
import 'package:app_store/providers/locale_provider.dart';
import 'package:app_store/providers/theme_provider.dart';
import 'package:app_store/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import "package:intl/locale.dart" as intl;
import 'package:provider/provider.dart';
import 'package:yatl_flutter/yatl_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initProviders();
  runApp(
    YatlApp(
      core: yatl,
      getLocale: () =>
          intl.Locale.tryParse(preferences.locale ?? "")?.toFlutterLocale(),
      setLocale: (locale) => preferences.locale = locale?.toString(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>.value(
            value: ThemeProvider(themeData: lightTheme, themeSwitched: false),
          ),
          ),
        ],
        child: const AppStore(),
      ),
    ),
  );
}

class AppStore extends StatelessWidget {
  const AppStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Store',
      theme: theme(context),
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        context.localizationsDelegate,
      ],
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
