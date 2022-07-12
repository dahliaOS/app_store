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
import 'package:app_store/models/buttons/chip_button_model.dart';
import 'package:app_store/providers/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:pub_semver/pub_semver.dart';

List<AppItemModel> appItems = <AppItemModel>[
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.design,
    ],
    categories: const {AppCategory.design},
    id: 1,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.games,
    ],
    categories: const {AppCategory.games},
    id: 2,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.entertainment,
    ],
    categories: const {AppCategory.entertainment},
    id: 3,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.development,
    ],
    categories: const {AppCategory.development},
    id: 4,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.music,
    ],
    categories: const {AppCategory.music},
    id: 5,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.productivity,
    ],
    categories: const {AppCategory.productivity},
    id: 6,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.finance,
    ],
    categories: const {AppCategory.finance},
    id: 7,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.healthAndWellBeing,
    ],
    categories: const {AppCategory.healthAndWellBeing},
    id: 8,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.education,
    ],
    categories: const {AppCategory.education},
    id: 9,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.fitness,
    ],
    categories: const {AppCategory.fitness},
    id: 10,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.communication,
    ],
    categories: const {AppCategory.communication},
    id: 11,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.business,
    ],
    categories: const {AppCategory.business},
    id: 12,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.games,
      strings.category.entertainment,
    ],
    categories: const {AppCategory.games, AppCategory.entertainment},
    id: 13,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.tools,
      strings.category.development,
    ],
    categories: const {AppCategory.tools, AppCategory.development},
    id: 14,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
  AppItemModel(
    name: strings.appPage.name,
    rating: 5,
    categoryName: [
      strings.category.finance,
      strings.category.productivity,
    ],
    categories: const {AppCategory.finance, AppCategory.productivity},
    id: 15,
    icon: Image.network(
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    ),
    version: Version(1, 0, 0),
  ),
];

class FilterProvider with ChangeNotifier {
  FilterProvider(this._appsFilter);

  Set<AppItemModel> _appsFilter = {};

  Set<AppItemModel> getAppFilter() => _appsFilter;

  Future<void> setAppFilter(List<AppItemModel> allApps) async {
    _appsFilter = allApps.toSet();
    notifyListeners();
  }

  Future<void> retainInAppFilter(ChipButtonModel e) async {
    _appsFilter.retainWhere(
      (element) => element.categories.any(
        (element) => element == e.category,
      ),
    );
    notifyListeners();
  }

  Future<void> removeInAppFilter(ChipButtonModel e) async {
    _appsFilter.removeWhere(
      (element) => element.categories.any((element) => element == e.category),
    );
    notifyListeners();
  }

  Future<void> addInAppFilter(ChipButtonModel e) async {
    _appsFilter.addAll(
      appItems.where(
        (element) => element.categories.any((element) => element == e.category),
      ),
    );
    notifyListeners();
  }

  Future<void> clearAddAllInFilter(ChipButtonModel e) async {
    _appsFilter
      ..clear()
      ..addAll(appItems);
    notifyListeners();
  }
}
