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

import 'package:app_store/providers/locale.dart';
import 'package:app_store/providers/theme_provider.dart';
import 'package:app_store/theme/theme.dart';
import 'package:app_store/utils/native_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yatl_flutter/yatl_flutter.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider _themeprovider = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: const Text(
          'Settings',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    strings.settings.themeMode,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SwitchListTile(
                    title: Text(
                      strings.settings.darkMode,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    subtitle: Text(
                      strings.settings.darkModeDescription,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    shape: Theme.of(context).listTileTheme.shape,
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    activeColor:
                        Theme.of(context).listTileTheme.selectedTileColor,
                    secondary: Icon(
                      Icons.dark_mode,
                      color: Theme.of(context).listTileTheme.iconColor,
                      size: 30,
                    ),
                    onChanged: (bool value) {
                      _themeprovider.setThemeSwitched(value);
                      _themeprovider.getThemeSwitched()
                          ? _themeprovider.setTheme(darkTheme)
                          : _themeprovider.setTheme(lightTheme);
                    },
                    value: _themeprovider.getThemeSwitched(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    strings.settings.locale,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      childrenPadding: const EdgeInsets.only(top: 30),
                      expandedAlignment: Alignment.center,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      title: Text(
                        strings.settings.localeTitle,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      subtitle: Text(
                        strings.settings.localeDescription,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      leading: Icon(
                        Icons.language,
                        color: Theme.of(context).listTileTheme.iconColor,
                        size: 30,
                      ),
                      children: <Widget>[
                        Wrap(
                          spacing: width / 83,
                          children: [
                            for (final item in locales.supportedLocales)
                              Wrap(
                                spacing: 5,
                                direction: Axis.vertical,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(15),
                                      onTap: () {
                                        context.locale = item.toFlutterLocale();
                                        final snackBar = SnackBar(
                                          clipBehavior: Clip.antiAlias,
                                          content: Text(
                                            'Locale successfully set to ${localeNativeNames[item.languageCode]} (${item.toLanguageTag()})',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
                                          ),
                                          behavior: SnackBarBehavior.floating,
                                          width: 400,
                                          duration: const Duration(seconds: 1),
                                          action: SnackBarAction(
                                            textColor: Theme.of(context)
                                                .textTheme
                                                .subtitle2!
                                                .color,
                                            label: 'Close',
                                            onPressed: () {},
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      },
                                      splashColor:
                                          Theme.of(context).primaryColor,
                                      child: Center(
                                        child: Text(
                                          item.countryCode!.replaceAllMapped(
                                            RegExp('[A-Z]'),
                                            (match) => String.fromCharCode(
                                              match.group(0)!.codeUnitAt(0) +
                                                  127397,
                                            ),
                                          ),
                                          style: const TextStyle(
                                            fontSize: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    localeNativeNames[item.languageCode] ??
                                        "Language code not found",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text(
                                    item.toLanguageTag(),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "${locales.progressData[item.toLanguageTag()]} / ${locales.progressData[context.fallbackLocale.toLanguageTag()]}",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
