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

import 'package:app_store/models/buttons/app_category_model.dart';
import 'package:app_store/models/buttons/app_item_model.dart';
import 'package:app_store/models/buttons/app_review_model.dart';
import 'package:app_store/widgets/cards/app_category_item.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:app_store/widgets/text/app_review_item.dart';
import 'package:flutter/material.dart';

final _appItems = <AppItemModel>[
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
    ],
  ),
  AppItemModel(
    name: 'Application',
    rating: 5.0,
    category: [
      'Tools',
      'Development',
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
    tooltip: 'Developer',
    icon: Icons.person,
  ),
  AppCategoryItemModel(
    name: 'Flutter, Dart',
    tooltip: 'Technology',
    icon: Icons.code,
  ),
  AppCategoryItemModel(
    name: '#1',
    tooltip: 'Trending position',
    icon: Icons.leaderboard,
  ),
  AppCategoryItemModel(
    name: 'English',
    tooltip: 'Locale',
    icon: Icons.language,
  ),
  AppCategoryItemModel(
    name: '20MB',
    tooltip: 'Size',
    icon: Icons.sd_storage,
  ),
  AppCategoryItemModel(
    name: 'FOSS',
    tooltip: 'Source',
    icon: Icons.source,
  ),
  AppCategoryItemModel(
    name: '12+',
    tooltip: 'Age appropriateness',
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
            padding: const EdgeInsets.only(
              right: 40,
              left: 40,
              top: 30,
              bottom: 30,
            ),
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
                                'Application',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              Text(
                                'Description',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Category',
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
                                                'Are you sure you want to install?',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                                overflow: TextOverflow.clip,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'This application can do unspeakable things to you while you sleep. But possibly worst of all, its developer does not know much about the application he built himself. May God save us.',
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
                                                    child: const Text('Yes'),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text('No'),
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
                                children: const <Widget>[
                                  Icon(
                                    Icons.download,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Download',
                                    style: TextStyle(color: Colors.white),
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
                                              'Donate to application developer',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
                                              overflow: TextOverflow.clip,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'If you wish to support the development of the application, please click on the donations links below where you can donate an amount you wish.',
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
                                                  child: const Text('Close'),
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
                              children: const <Widget>[
                                Icon(
                                  Icons.payment,
                                  color: Colors.deepOrange,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Donate',
                                  style: TextStyle(color: Colors.deepOrange),
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
                          'Information',
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Insert application description here.',
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
                          'Images',
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
                          'Similar applications',
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
                          for (final item in _appItems)
                            AppItem(
                              name: item.name,
                              rating: item.rating,
                              category: item.category,
                            ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
