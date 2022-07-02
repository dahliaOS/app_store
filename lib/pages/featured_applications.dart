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

import 'package:app_store/models/cards/app_item_model.dart';
import 'package:app_store/services/locales/locale_strings.g.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:flutter/material.dart';

final _appItems = <AppItemModel>[
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.design,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.games,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.entertainment,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.development,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.music,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.productivity,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.finance,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.healthAndWellBeing,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.education,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.fitness,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.communication,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.business,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.games,
      LocaleStrings.category.entertainment,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
    ],
  ),
  AppItemModel(
    name: LocaleStrings.appPage.name,
    rating: 5.0,
    category: [
      LocaleStrings.category.finance,
      LocaleStrings.category.productivity,
    ],
  ),
];

class FeaturedApplications extends StatelessWidget {
  const FeaturedApplications(
    this.loadPage,
    this.scrollToTop, {
    Key? key,
  }) : super(key: key);

  final void Function(int) loadPage;
  final void Function() scrollToTop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            const Icon(Icons.person_search),
            const SizedBox(
              width: 10,
            ),
            Text(
              LocaleStrings.topic.featured,
              style: Theme.of(context).textTheme.headline2,
            ),
            IconButton(
              onPressed: () {
                loadPage(0);
                scrollToTop();
              },
              icon: const Icon(Icons.navigate_before),
              splashRadius: 18,
              padding: EdgeInsets.zero,
              color: Theme.of(context).iconTheme.color,
              hoverColor: Theme.of(context).hoverColor,
              splashColor: Theme.of(context).splashColor,
              focusColor: Theme.of(context).focusColor,
              highlightColor: Theme.of(context).highlightColor,
              tooltip: LocaleStrings.topic.showAll,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: width / 80,
          children: <Widget>[
            for (final item in _appItems)
              AppItem(
                name: item.name,
                rating: item.rating,
                category: item.category,
              ),
          ],
        ),
      ],
    );
  }
}
