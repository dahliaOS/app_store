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

import 'package:app_store/providers/locale_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pub_semver/pub_semver.dart';

@immutable
class AppItemModel {
  const AppItemModel({
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
  int get hashCode => Object.hash(
        name,
        rating,
        categories,
        id,
        icon,
        version,
        briefDescription,
        description,
        developers,
        technologies,
        locales,
        appSize,
        source,
        donationLinks,
      );

  @override
  bool operator ==(Object other) {
    if (other is AppItemModel) {
      return name == other.name &&
          rating == other.rating &&
          setEquals(categories, other.categories) &&
          id == other.id &&
          icon == other.icon &&
          version == other.version &&
          briefDescription == other.briefDescription &&
          description == other.description &&
          developers == other.developers &&
          technologies == other.technologies &&
          locales == other.locales &&
          appSize == other.appSize &&
          source == other.source &&
          donationLinks == other.donationLinks;
    }
    return false;
  }
}

enum AppCategory {
  all,
  design,
  games,
  entertainment,
  development,
  music,
  productivity,
  tools,
  finance,
  health,
  education,
  fitness,
  communication,
  business;

  static String translateString(AppCategory category) {
    switch (category) {
      case all:
        {
          return strings.category.all;
        }
      case design:
        {
          return strings.category.design;
        }
      case games:
        {
          return strings.category.games;
        }
      case entertainment:
        {
          return strings.category.entertainment;
        }
      case development:
        {
          return strings.category.development;
        }
      case music:
        {
          return strings.category.music;
        }
      case productivity:
        {
          return strings.category.productivity;
        }
      case tools:
        {
          return strings.category.tools;
        }
      case finance:
        {
          return strings.category.finance;
        }
      case health:
        {
          return strings.category.health;
        }
      case education:
        {
          return strings.category.education;
        }
      case fitness:
        {
          return strings.category.fitness;
        }
      case communication:
        {
          return strings.category.communication;
        }
      case business:
        {
          return strings.category.business;
        }
    }
  }
}

enum AppSources {
  foss,
  oss,
  proprietary;

  static String sourceName(AppSources source) {
    switch (source) {
      case foss:
        {
          return 'FOSS';
        }
      case oss:
        {
          return 'OSS';
        }
      case proprietary:
        {
          return 'Proprietary';
        }
    }
  }
}
