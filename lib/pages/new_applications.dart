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

import 'package:app_store/widgets/cards/app_item.dart';
import 'package:flutter/material.dart';

class NewApplications extends StatelessWidget {
  const NewApplications(
    this.onAddButtonTapped,
    this.scrollToTop, {
    Key? key,
  }) : super(key: key);
  final void Function(int) onAddButtonTapped;
  final void Function() scrollToTop;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                onAddButtonTapped(0);
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
              tooltip: 'Show all categories',
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.count(
          childAspectRatio: 4,
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          shrinkWrap: true,
          children: const <Widget>[
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
            AppItem(
              name: 'Application',
              rating: 5.0,
              category: ['Tools', 'Development'],
            ),
          ],
        ),
      ],
    );
  }
}
