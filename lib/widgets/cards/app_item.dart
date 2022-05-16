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

import 'package:flutter/material.dart';

class AppItem extends StatelessWidget {
  const AppItem({
    this.name,
    this.rating,
    this.category,
    Key? key,
  }) : super(key: key);

  final String? name;
  final List<String>? category;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 210,
      child: InkWell(
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.pushNamed(context, '/app_page');
        },
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              height: 70,
              width: 70,
              child: Card(),
            ),
            const SizedBox(
              width: 10,
            ),
            Wrap(
              direction: Axis.vertical,
              spacing: 3,
              children: <Widget>[
                Text(
                  name!,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  category!.map((e) => e).join(' • '),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Row(
                  children: [
                    Text(
                      '$rating',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
