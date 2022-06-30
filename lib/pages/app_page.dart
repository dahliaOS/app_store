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

import 'package:app_store/models/cards/app_category_model.dart';
import 'package:app_store/models/cards/app_item_model.dart';
import 'package:app_store/models/text/app_review_model.dart';
import 'package:app_store/services/locales/locale_strings.g.dart';
import 'package:app_store/widgets/cards/app_category_item.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:app_store/widgets/text/app_review_item.dart';
import 'package:flutter/material.dart';

final _appItems = <AppItemModel>[
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
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
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
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
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
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
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
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
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
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
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
      LocaleStrings.category.tools,
      LocaleStrings.category.development,
    ],
  ),
];

final _reviewItems = <ReviewItemModel>[
  ReviewItemModel(name: 'Marin Heđeš', comment: 'Good app.', rating: 4),
  ReviewItemModel(name: 'Noah Cain', comment: 'Decent.', rating: 3),
  ReviewItemModel(name: 'Davide Bianco', comment: 'Awesome!', rating: 1),
  ReviewItemModel(name: 'Blake Leonard', comment: 'Not bad.', rating: 4),
  ReviewItemModel(name: 'Camden Bruce', comment: 'Splendid.', rating: 5),
];

final _categoryItems = <AppCategoryItemModel>[
  AppCategoryItemModel(
    name: 'Marin Heđeš',
    tooltip: LocaleStrings.appPage.informationDeveloperHint,
    icon: Icons.person,
  ),
  AppCategoryItemModel(
    name: 'Flutter, Dart',
    tooltip: LocaleStrings.appPage.informationTechnologyHint,
    icon: Icons.code,
  ),
  AppCategoryItemModel(
    name: '#1',
    tooltip: LocaleStrings.appPage.informationTrendingHint,
    icon: Icons.leaderboard,
  ),
  AppCategoryItemModel(
    name: LocaleStrings.appPage.informationLocale,
    tooltip: LocaleStrings.appPage.informationLocaleHint,
    icon: Icons.language,
  ),
  AppCategoryItemModel(
    name: '20MB',
    tooltip: LocaleStrings.appPage.informationSizeHint,
    icon: Icons.sd_storage,
  ),
  AppCategoryItemModel(
    name: LocaleStrings.appPage.informationSource,
    tooltip: LocaleStrings.appPage.informationSourceHint,
    icon: Icons.source,
  ),
  AppCategoryItemModel(
    name: '12+',
    tooltip: LocaleStrings.appPage.informationAgeAppropriatnessHint,
    icon: Icons.child_care,
  ),
];

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
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
          'App page',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: width,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Wrap(
                        spacing: width / 90,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: const Card(),
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 7,
                            children: <Widget>[
                              Text(
                                LocaleStrings.appPage.name,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              Text(
                                LocaleStrings.appPage.shortDescription,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  LocaleStrings.appPage.category,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Wrap(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: SizedBox(
                                        height: 300,
                                        width: 400,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                            bottom: 10,
                                            top: 30,
                                            left: 30,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                LocaleStrings.appPage
                                                    .downloadDialogTitle,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                                overflow: TextOverflow.clip,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                LocaleStrings.appPage
                                                    .downloadDialogDescription,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1,
                                                overflow: TextOverflow.clip,
                                              ),
                                              const Spacer(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      LocaleStrings.appPage
                                                          .downloadDialogConfirmInstallation,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      LocaleStrings.appPage
                                                          .downloadDialogCancelInstallation,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Icon(
                                    Icons.download,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    LocaleStrings.appPage.download,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    backgroundColor: Theme.of(context)
                                        .dialogTheme
                                        .backgroundColor,
                                    child: SizedBox(
                                      height: 300,
                                      width: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                          bottom: 10,
                                          top: 30,
                                          left: 30,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              LocaleStrings
                                                  .appPage.donateDialogTitle,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
                                              overflow: TextOverflow.clip,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              LocaleStrings.appPage
                                                  .donateDialogDescription,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                              overflow: TextOverflow.clip,
                                            ),
                                            const Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'Open Collective',
                                                    overflow:
                                                        TextOverflow.visible,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('PayPal'),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    LocaleStrings.appPage
                                                        .donateDialogClose,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Icon(
                                  Icons.payment,
                                  color: Colors.deepOrange,
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  LocaleStrings.appPage.donate,
                                  style:
                                      const TextStyle(color: Colors.deepOrange),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: width,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: <Widget>[
                      for (final item in _categoryItems)
                        AppCategoryItem(
                          name: item.name,
                          tooltip: item.tooltip,
                          icon: item.icon,
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.description),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          LocaleStrings.appPage.longDescriptionTitle,
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      LocaleStrings.appPage.longDescriptionContent,
                      style: Theme.of(context).textTheme.subtitle2,
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.image),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          LocaleStrings.appPage.images,
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: width / 5,
                            height: height / 5,
                            child: const Card(),
                          ),
                          SizedBox(
                            width: width / 5,
                            height: height / 5,
                            child: const Card(),
                          ),
                          SizedBox(
                            width: width / 5,
                            height: height / 5,
                            child: const Card(),
                          ),
                          SizedBox(
                            width: width / 5,
                            height: height / 5,
                            child: const Card(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.reviews),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          LocaleStrings.appPage.reviews,
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: <Widget>[
                          for (final item in _reviewItems)
                            ReviewItem(
                              name: item.name,
                              comment: item.comment,
                              rating: item.rating,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(Icons.control_point_duplicate),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              LocaleStrings.appPage.similarApplications,
                              style: Theme.of(context).textTheme.headline2,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
