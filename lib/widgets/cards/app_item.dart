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
import 'package:app_store/pages/app_page.dart';
import 'package:flutter/material.dart';
import 'package:pub_semver/pub_semver.dart';

class AppItem extends StatelessWidget {
  const AppItem({
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
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(
        minHeight: 85,
        minWidth: 175,
        maxHeight: 85,
        maxWidth: 250,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(
        bottom: 30,
        right: 10,
      ),
      child: Material(
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => AppPage(
                  name: name,
                  rating: rating,
                  categories: categories,
                  id: id,
                  icon: icon,
                  version: version,
                  briefDescription: briefDescription,
                  description: description,
                  developers: developers,
                  technologies: technologies,
                  locales: locales,
                  appSize: appSize,
                  source: source,
                  donationLinks: donationLinks,
                ),
              ),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: icon,
              ),
              const SizedBox(
                width: 15,
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 3,
                children: <Widget>[
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  for (final item in categories)
                    Text(
                      AppCategory.translateString(item),
                      style: Theme.of(context).textTheme.subtitle2,
                      overflow: TextOverflow.clip,
                    ),
                  Row(
                    children: [
                      Text(
                        rating.toString(),
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
