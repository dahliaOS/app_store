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
import 'package:app_store/models/text/app_review_model.dart';
import 'package:app_store/providers/filter_provider.dart';
import 'package:app_store/providers/locale_provider.dart';
import 'package:app_store/widgets/cards/app_category_item.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:app_store/widgets/text/app_review_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:url_launcher/url_launcher.dart';

final _reviewItems = <ReviewItemModel>[
  ReviewItemModel(name: 'Marin Heđeš', comment: 'Good app.', rating: 4),
  ReviewItemModel(name: 'Noah Cain', comment: 'Decent.', rating: 3),
  ReviewItemModel(name: 'Davide Bianco', comment: 'Awesome!', rating: 1),
  ReviewItemModel(name: 'Blake Leonard', comment: 'Not bad.', rating: 4),
  ReviewItemModel(name: 'Camden Bruce', comment: 'Splendid.', rating: 5),
];

class AppPage extends StatelessWidget {
  const AppPage({
    required this.name,
    required this.rating,
    required this.categories,
    required this.id,
    required this.icon,
    required this.version,
    required this.briefDescription,
    required this.description,
    required this.developers,
    required this.technologies,
    required this.locales,
    required this.appSize,
    required this.source,
    required this.donationLinks,
    super.key,
  });

  final String name;
  final double rating;
  final Set<AppCategory> categories;
  final int id;
  final Image icon;
  final Version version;
  final String briefDescription;
  final String description;
  final List<String> developers;
  final List<String> technologies;
  final List<String> locales;
  final int appSize;
  final AppSources source;
  final Map<String, String> donationLinks;

  @override
  Widget build(BuildContext context) {
    final _filterprovider = Provider.of<FilterProvider>(context);
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
        title: Text(
          name,
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
                            child: icon,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 5,
                            children: <Widget>[
                              Text(
                                name,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                width: width / 3,
                                child: Text(
                                  briefDescription,
                                  style: Theme.of(context).textTheme.subtitle1,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                              Text(
                                categories
                                    .map(AppCategory.translateString)
                                    .toList()
                                    .join(', '),
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Text(
                                version.toString(),
                                style: Theme.of(context).textTheme.subtitle1,
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
                                showDialog<Dialog>(
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
                                                strings.appPage
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
                                                strings.appPage
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
                                                      strings.appPage
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
                                                      strings.appPage
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
                                    strings.appPage.download,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          if (donationLinks.isNotEmpty)
                            OutlinedButton(
                              onPressed: () {
                                showDialog<Dialog>(
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
                                                strings
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
                                                strings.appPage
                                                    .donateDialogDescription,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1,
                                                overflow: TextOverflow.clip,
                                              ),
                                              const Spacer(),
                                              SizedBox(
                                                width: width,
                                                child: Wrap(
                                                  alignment: WrapAlignment.end,
                                                  children: <Widget>[
                                                    Wrap(
                                                      children: donationLinks
                                                          .entries
                                                          .map(
                                                            (e) => TextButton(
                                                              onPressed: () {
                                                                launchUrl(
                                                                  Uri.parse(
                                                                    e.value,
                                                                  ),
                                                                );
                                                              },
                                                              child: Text(
                                                                e.key,
                                                                overflow:
                                                                    TextOverflow
                                                                        .clip,
                                                              ),
                                                            ),
                                                          )
                                                          .toList(),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        strings.appPage
                                                            .donateDialogClose,
                                                      ),
                                                    )
                                                  ],
                                                ),
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
                                    strings.appPage.donate,
                                    style: const TextStyle(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          else
                            const SizedBox.shrink(),
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
                      AppCategoryItem(
                        name: developers.join(', '),
                        tooltip: strings.appPage.informationDeveloperHint,
                        icon: Icons.person,
                      ),
                      AppCategoryItem(
                        name: technologies.join('\n'),
                        tooltip: strings.appPage.informationTechnologyHint,
                        icon: Icons.code,
                      ),
                      AppCategoryItem(
                        name: '#1',
                        tooltip: strings.appPage.informationTrendingHint,
                        icon: Icons.leaderboard,
                      ),
                      AppCategoryItem(
                        name: locales.join(', '),
                        tooltip: strings.appPage.informationLocaleHint,
                        icon: Icons.language,
                      ),
                      AppCategoryItem(
                        name: '$appSize' 'MB',
                        tooltip: strings.appPage.informationSizeHint,
                        icon: Icons.sd_storage,
                      ),
                      AppCategoryItem(
                        name: AppSources.sourceName(source),
                        tooltip: strings.appPage.informationSourceHint,
                        icon: Icons.source,
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
                        const Icon(Icons.description),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          strings.appPage.longDescriptionTitle,
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: Theme.of(context).textTheme.subtitle2!.color,
                          ),
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
                          strings.appPage.images,
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
                          strings.appPage.reviews,
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
                              strings.appPage.similarApplications,
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
                            for (final item in _filterprovider.getAppFilter())
                              AppItem(
                                name: item.name,
                                rating: item.rating,
                                categories: item.categories,
                                id: item.id,
                                icon: item.icon,
                                version: item.version,
                                briefDescription: item.briefDescription,
                                description: item.description,
                                developers: item.developers,
                                technologies: item.technologies,
                                locales: item.locales,
                                appSize: item.appSize,
                                source: item.source,
                                donationLinks: item.donationLinks,
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
