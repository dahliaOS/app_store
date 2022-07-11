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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider with ChangeNotifier {
  ThemeProvider({required this.themeData, required this.themeSwitched});
  ThemeData themeData;
  bool themeSwitched;

  ThemeData getTheme() => themeData;
  bool getThemeSwitched() => themeSwitched;

  Future<void> setTheme(ThemeData value) async {
    themeData = value;
    notifyListeners();
  }

  Future<void> setThemeSwitched({required bool value}) async {
    themeSwitched = value;
    notifyListeners();
  }
}

ThemeData theme(BuildContext context) {
  final _themeprovider = Provider.of<ThemeProvider>(context);
  return _themeprovider.getTheme();
}
