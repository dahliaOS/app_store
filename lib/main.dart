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

import 'package:appstore/pages/landing.dart';
import 'package:appstore/theme/theme.dart';
import 'package:appstore/theme/theme_manager.dart';
import 'package:appstore/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppStore());
}

class AppStore extends StatelessWidget {
  const AppStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>.value(
          value: ThemeProvider(
            SchedulerBinding.instance!.window.platformBrightness ==
                    Brightness.light
                ? lightTheme
                : darkTheme,
          ),
          builder: (context, child) => MaterialApp(
            title: 'App store',
            theme: theme(context),
            initialRoute: '/',
            routes: {
              '/': (context) => const Landing(),
            },
          ),
        ),
      ],
    );
  }
}
