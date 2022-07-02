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

import 'package:app_store/models/buttons/chip_button_model.dart';
import 'package:app_store/models/cards/app_item_model.dart';
import 'package:app_store/pages/featured_applications.dart';
import 'package:app_store/pages/new_applications.dart';
import 'package:app_store/pages/trending_applications.dart';
import 'package:app_store/services/locales/locale_strings.g.dart';
import 'package:app_store/widgets/buttons/icon_button.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:app_store/widgets/text_fields/search_bar.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  static final _chipButtons = <ChipButtonModel>[
    ChipButtonModel(
      name: LocaleStrings.category.all,
      icon: Icons.apps,
      id: 1,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.design,
      icon: Icons.design_services,
      id: 2,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.games,
      icon: Icons.games,
      id: 3,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.entertainment,
      icon: Icons.movie,
      id: 4,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.development,
      icon: Icons.developer_mode,
      id: 5,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.music,
      icon: Icons.audiotrack,
      id: 6,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.productivity,
      icon: Icons.work,
      id: 7,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.tools,
      icon: Icons.developer_board,
      id: 8,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.finance,
      icon: Icons.money,
      id: 9,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.healthAndWellBeing,
      icon: Icons.health_and_safety,
      id: 10,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.education,
      icon: Icons.cast_for_education,
      id: 11,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.fitness,
      icon: Icons.fitness_center,
      id: 12,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.communication,
      icon: Icons.comment,
      id: 13,
    ),
    ChipButtonModel(
      name: LocaleStrings.category.business,
      icon: Icons.business,
      id: 14,
    ),
  ];

  static final _appItems = <AppItemModel>[
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

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  final Set _selectedChipButtons = <int>{1};

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: width,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: <Widget>[
                      SearchBar(
                        hint: LocaleStrings.searchbar.hint,
                        icon: Icons.search,
                      ),
                      Wrap(
                        children: [
                          MyIconButton(
                            icon: Icons.person,
                            onPressed: () {
                              Navigator.pushNamed(context, '/user');
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MyIconButton(
                            icon: Icons.settings,
                            onPressed: () {
                              Navigator.pushNamed(context, '/settings');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: width / 80,
                      children: Landing._chipButtons
                          .map(
                            (e) => Container(
                              constraints: const BoxConstraints(maxHeight: 80),
                              child: ChoiceChip(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                label: Text(
                                  e.name,
                                  style: TextStyle(
                                    color: _selectedChipButtons.contains(e.id)
                                        ? Colors.white
                                        : null,
                                  ),
                                ),
                                avatar: Icon(
                                  e.icon,
                                  size: 20,
                                  color: _selectedChipButtons.contains(e.id)
                                      ? Colors.white
                                      : Theme.of(context).iconTheme.color,
                                ),
                                labelPadding:
                                    Theme.of(context).chipTheme.labelPadding,
                                elevation:
                                    Theme.of(context).chipTheme.elevation,
                                backgroundColor:
                                    Theme.of(context).chipTheme.backgroundColor,
                                labelStyle:
                                    Theme.of(context).textTheme.subtitle2,
                                pressElevation:
                                    Theme.of(context).chipTheme.pressElevation,
                                selectedColor:
                                    Theme.of(context).chipTheme.selectedColor,
                                onSelected: (value) {
                                  setState(() {
                                    if (value == true &&
                                        _selectedChipButtons.contains(1) &&
                                        _selectedChipButtons.length < 2) {
                                      _selectedChipButtons.clear();
                                      _selectedChipButtons.add(e.id);
                                    } else if (value == true && e.id == 1 ||
                                        value == true &&
                                            _selectedChipButtons.length == 12) {
                                      _selectedChipButtons.clear();
                                      _selectedChipButtons.add(1);
                                    } else if (value == false &&
                                        _selectedChipButtons.length < 2) {
                                      _selectedChipButtons.remove(e.id);
                                      _selectedChipButtons.add(1);
                                    } else if (value == false) {
                                      _selectedChipButtons.remove(e.id);
                                    } else if (value == true) {
                                      _selectedChipButtons.add(e.id);
                                    }
                                  });
                                },
                                selected: _selectedChipButtons.contains(e.id),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ExpandablePageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: <Widget>[
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: <Widget>[
                                const Icon(Icons.trending_up),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  LocaleStrings.topic.trending,
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                IconButton(
                                  onPressed: () {
                                    loadPage(1);
                                    scrollToTop();
                                  },
                                  icon: const Icon(Icons.navigate_next),
                                  splashRadius: 18,
                                  padding: EdgeInsets.zero,
                                  color: Theme.of(context).iconTheme.color,
                                  hoverColor: Theme.of(context).hoverColor,
                                  splashColor: Theme.of(context).splashColor,
                                  focusColor: Theme.of(context).focusColor,
                                  highlightColor:
                                      Theme.of(context).highlightColor,
                                  tooltip: LocaleStrings.topic.trendingHint,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              spacing: width / 80,
                              children: <Widget>[
                                for (final item in Landing._appItems)
                                  AppItem(
                                    name: item.name,
                                    rating: item.rating,
                                    category: item.category,
                                  ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
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
                                    loadPage(2);
                                    scrollToTop();
                                  },
                                  icon: const Icon(Icons.navigate_next),
                                  splashRadius: 18,
                                  padding: EdgeInsets.zero,
                                  color: Theme.of(context).iconTheme.color,
                                  hoverColor: Theme.of(context).hoverColor,
                                  splashColor: Theme.of(context).splashColor,
                                  focusColor: Theme.of(context).focusColor,
                                  highlightColor:
                                      Theme.of(context).highlightColor,
                                  tooltip: LocaleStrings.topic.featuredHint,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              spacing: width / 80,
                              children: <Widget>[
                                for (final item in Landing._appItems)
                                  AppItem(
                                    name: item.name,
                                    rating: item.rating,
                                    category: item.category,
                                  ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: <Widget>[
                                const Icon(Icons.library_add),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  LocaleStrings.topic.newTopic,
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                IconButton(
                                  onPressed: () {
                                    loadPage(3);
                                    scrollToTop();
                                  },
                                  icon: const Icon(Icons.navigate_next),
                                  splashRadius: 18,
                                  padding: EdgeInsets.zero,
                                  color: Theme.of(context).iconTheme.color,
                                  hoverColor: Theme.of(context).hoverColor,
                                  splashColor: Theme.of(context).splashColor,
                                  focusColor: Theme.of(context).focusColor,
                                  highlightColor:
                                      Theme.of(context).highlightColor,
                                  tooltip: LocaleStrings.topic.newHint,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              spacing: width / 80,
                              children: <Widget>[
                                for (final item in Landing._appItems)
                                  AppItem(
                                    name: item.name,
                                    rating: item.rating,
                                    category: item.category,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    TrendingApplications(loadPage, scrollToTop),
                    FeaturedApplications(loadPage, scrollToTop),
                    NewApplications(loadPage, scrollToTop),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void scrollToTop() {
    if (_scrollController.offset > 30) {
      _scrollController.animateTo(
        0,
        duration: const Duration(
          milliseconds: 700,
        ),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void loadPage(int index) {
    _pageController.jumpToPage(
      index,
    );
  }
}
