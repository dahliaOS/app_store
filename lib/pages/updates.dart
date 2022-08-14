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

import 'package:app_store/models/app/app_item_model.dart';
import 'package:app_store/providers/filter_provider.dart';
import 'package:app_store/providers/locale_provider.dart';
import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

final Set<AppItemModel> needsUpdate = Set.from(appItems.take(5));

class _UpdatesState extends State<Updates> {
  final Set<int> _isAppUpdating = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: Text(
          strings.updates.title,
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
                children: [
                  Wrap(
                    runSpacing: 5,
                    spacing: 10,
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Text(
                        strings.updates.title,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                            const Size(170, 36),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _isAppUpdating.length == needsUpdate.length
                                ? _isAppUpdating.clear()
                                : _isAppUpdating.addAll({1, 2, 3, 4, 5});
                          });
                        },
                        child: Text(
                          _isAppUpdating.length == needsUpdate.length
                              ? strings.updates.updateCancelAllButton
                              : strings.updates.updateAllButton,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Wrap(
                        runSpacing: 15,
                        children: <Widget>[
                          for (final item in needsUpdate)
                            ListTile(
                              leading: SizedBox(
                                height: 40,
                                width: 40,
                                child: item.icon,
                              ),
                              title: Text(
                                item.name,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              subtitle: Text(
                                strings.updates.updateAvailable,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .apply(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .color,
                                    ),
                              ),
                              trailing: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                    const Size(110, 36),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isAppUpdating.contains(item.id)
                                        ? _isAppUpdating.remove(item.id)
                                        : _isAppUpdating.add(item.id);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: _isAppUpdating.contains(item.id)
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            const SizedBox(
                                              height: 15,
                                              width: 15,
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              strings
                                                  .updates.updateCancelButton,
                                            )
                                          ],
                                        )
                                      : Text(strings.updates.updateButton),
                                ),
                              ),
                            )
                        ],
                      )
                    ],
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
