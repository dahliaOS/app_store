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

import 'package:app_store/providers/theme_provider.dart';
import 'package:app_store/services/locales/locale_strings.g.dart';
import 'package:app_store/services/locales/locales.g.dart';
import 'package:app_store/services/locales/native_names.dart';
import 'package:app_store/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                LocaleStrings.settings.themeMode,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 15,
              ),
              SwitchListTile(
                title: Text(
                  LocaleStrings.settings.darkMode,
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: Text(
                  LocaleStrings.settings.darkModeDescription,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                shape: Theme.of(context).listTileTheme.shape,
                tileColor: Theme.of(context).listTileTheme.tileColor,
                activeColor: Theme.of(context).listTileTheme.selectedTileColor,
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
                LocaleStrings.settings.locale,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 15,
              ),
              Wrap(
                spacing: width / 80,
                children: [
                  for (final item in Locales.supported)
                    Wrap(
                      spacing: 5,
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            child: InkWell(
                              onTap: () => context.setLocale(item),
                              splashColor: Theme.of(context).primaryColor,
                              child: Flag.fromString(
                                item.languageCode.replaceAll("en", "gb"),
                                replacement: const Icon(Icons.language),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          localeNativeNames[item.languageCode] ??
                              "Language code not found",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          item.toLanguageTag(),
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "${Locales.stringData[item.toLanguageTag()]} / ${Locales.stringData[context.fallbackLocale!.toLanguageTag()]}",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
