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
import 'package:flutter/material.dart';
import 'package:pub_semver/pub_semver.dart';

class AppItem extends StatelessWidget {
  const AppItem({
    required this.name,
    required this.rating,
    required this.categoryName,
    required this.categories,
    required this.id,
    required this.icon,
    required this.version,
    super.key,
  });

  final String name;
  final double rating;
  final List<String> categoryName;
  final Set<AppCategory> categories;
  final int id;
  final Image icon;
  final Version version;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Container(
      height: 85,
      width: 170,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(
        bottom: height / 70,
      ),
      child: Material(
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          onTap: () {
            Navigator.pushNamed(context, '/app_page');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: icon,
              ),
              const SizedBox(
                width: 10,
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 3,
                children: <Widget>[
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  for (final item in categoryName)
                    SizedBox(
                      width: 100,
                      child: Text(
                        item,
                        style: Theme.of(context).textTheme.subtitle2,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  Row(
                    children: [
                      Text(
                        rating.toString(),
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
      ),
    );
  }
}
