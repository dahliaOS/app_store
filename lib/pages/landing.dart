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

import 'package:app_store/pages/featured_applications.dart';
import 'package:app_store/pages/new_applications.dart';
import 'package:app_store/pages/trending_applications.dart';
import 'package:app_store/widgets/buttons/chip_button.dart';
import 'package:app_store/widgets/buttons/icon_button.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:app_store/widgets/text_fields/search_bar.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  Landing({Key? key}) : super(key: key);
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 40,
              left: 40,
              top: 30,
              bottom: 30,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const SearchBar(
                      hint: 'Search applications...',
                      icon: Icons.search,
                    ),
                    const Spacer(),
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
                const SizedBox(
                  height: 40,
                ),
                ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ChipButton(),
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
                                  'Trending',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                IconButton(
                                  onPressed: () {
                                    onAddButtonTapped(1);
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
                                  tooltip: 'Show all trending applications',
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GridView.count(
                              childAspectRatio: 3,
                              primary: false,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 3,
                              shrinkWrap: true,
                              children: const <Widget>[
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
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
                                  'Featured',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                IconButton(
                                  onPressed: () {
                                    onAddButtonTapped(2);
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
                                  tooltip: 'Show all featured applications',
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GridView.count(
                              childAspectRatio: 3,
                              primary: false,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 3,
                              shrinkWrap: true,
                              children: const <Widget>[
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
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
                                  'New',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                IconButton(
                                  onPressed: () {
                                    onAddButtonTapped(3);
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
                                  tooltip:
                                      'Show all recently added applications',
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GridView.count(
                              childAspectRatio: 3,
                              primary: false,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 3,
                              shrinkWrap: true,
                              children: const <Widget>[
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                                AppItem(
                                  name: 'Application',
                                  rating: 5.0,
                                  category: [
                                    'Tools',
                                    'Development',
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    TrendingApplications(onAddButtonTapped, scrollToTop),
                    FeaturedApplications(onAddButtonTapped, scrollToTop),
                    NewApplications(onAddButtonTapped, scrollToTop),
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

  void onAddButtonTapped(int index) {
    _pageController.animateToPage(
      index,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(
        milliseconds: 700,
      ),
    );
  }
}
