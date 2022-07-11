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

import 'package:app_store/providers/filter_provider.dart';
import 'package:app_store/providers/locale_provider.dart';
import 'package:app_store/widgets/cards/app_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrendingApplications extends StatelessWidget {
  const TrendingApplications(
    this.loadPage,
    this.scrollToTop, {
    super.key,
  });

  final void Function(int) loadPage;
  final void Function() scrollToTop;

  @override
  Widget build(BuildContext context) {
    final _filterprovider = Provider.of<FilterProvider>(context);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            const Icon(Icons.trending_up),
            const SizedBox(
              width: 10,
            ),
            Text(
              strings.topic.trending,
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
              tooltip: strings.topic.showAll,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: width / 80,
          children: <Widget>[
            for (final item in _filterprovider.getAppFilter())
              AppItem(
                name: item.name,
                rating: item.rating,
                categoryName: item.categoryName,
                categories: item.categories,
              ),
          ],
        ),
      ],
    );
  }
}
