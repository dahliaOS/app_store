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
import 'package:flutter/material.dart';
import 'package:pub_semver/pub_semver.dart';

List<AppItemModel> appItems = <AppItemModel>[
  AppItemModel(
    name: 'Figma',
    rating: 5,
    categories: const {AppCategory.design, AppCategory.productivity},
    id: 1,
    icon: Image.network(
      'https://seeklogo.com/images/F/figma-logo-E4E21D3AEA-seeklogo.com.png',
    ),
    version: Version(116, 0, 5),
    briefDescription: 'Figma is a vector graphics editor and prototyping tool.',
    description:
        'Figma is a vector graphics editor and prototyping tool which is primarily web-based, with additional offline features enabled by desktop applications for macOS and Windows. The Figma mobile app for Android and iOS allow viewing and interacting with Figma prototypes in real-time mobile devices.',
    developers: const ['Figma, Inc'],
    technologies: const ['C++', 'WebAssembly'],
    locales: const ['English'],
    appSize: 90,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Spotify',
    rating: 5,
    categories: const {AppCategory.music, AppCategory.entertainment},
    id: 2,
    icon: Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Spotify_logo_without_text.svg/2048px-Spotify_logo_without_text.svg.png',
    ),
    version: Version(1, 1, 89),
    briefDescription: 'Spotify is a digital music, podcast, and video service.',
    description:
        'Spotify is a digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world',
    developers: const ['Spotify Technology S.A'],
    technologies: const ['Python', 'C++', 'C', 'Java'],
    locales: const ['English'],
    appSize: 120,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'VS Code',
    rating: 5,
    categories: const {AppCategory.development, AppCategory.tools},
    id: 3,
    icon: Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/2048px-Visual_Studio_Code_1.35_icon.svg.png',
    ),
    version: Version(1, 69, 1),
    briefDescription: 'Visual Studio Code is a source-code editor.',
    description:
        'Visual Studio Code, also commonly referred to as VS Code, is a source-code editor made by Microsoft for Windows, Linux and macOS',
    developers: const ['Microsoft'],
    technologies: const ['JavaScript', 'Java', 'TypeScript', 'CSS'],
    locales: const ['English'],
    appSize: 190,
    source: AppSources.foss,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Graft',
    rating: 5,
    categories: const {AppCategory.tools},
    id: 4,
    icon: Image.network(
      'https://raw.githubusercontent.com/dahliaOS/brand/master/Applications/Graft/png/logomark.png',
    ),
    version: Version(1, 0, 0),
    briefDescription:
        'Graft is an application for managing virtual machines and containers on dahliaOS.',
    description:
        'Graft is an application for managing virtual machines and containers on dahliaOS.',
    developers: const ['dahliaOS'],
    technologies: const ['Flutter', 'Dart'],
    locales: const ['English'],
    appSize: 30,
    source: AppSources.foss,
    donationLinks: const {
      'Open Collective': 'https://opencollective.com/dahliaos'
    },
  ),
  AppItemModel(
    name: 'Leaflet',
    rating: 5,
    categories: const {AppCategory.productivity},
    id: 5,
    icon: Image.network(
      'https://raw.githubusercontent.com/PotatoProject/Leaflet/main/web/favicon.png',
    ),
    version: Version(2, 0, 0),
    briefDescription: 'Leaflet is a notes application developed for POSP.',
    description: 'Leaflet is a notes application developed for POSP.',
    developers: const ['Davide Bianco'],
    technologies: const ['Flutter', 'Dart'],
    locales: const ['English'],
    appSize: 40,
    source: AppSources.foss,
    donationLinks: const {
      'Open Colletive': 'https://opencollective.com/leaflet',
    },
  ),
  AppItemModel(
    name: 'Discord',
    rating: 5,
    categories: const {AppCategory.communication},
    id: 6,
    icon: Image.network(
      'https://logodownload.org/wp-content/uploads/2017/11/discord-logo-8-1.png',
    ),
    version: Version(0, 0, 267),
    briefDescription:
        'Discord is a VoIP and instant messaging social platform.',
    description:
        'Discord is a VoIP and instant messaging social platform. Users have the ability to communicate with voice calls, video calls, text messaging, media and files in private chats or as part of communities called "servers". A server is a collection of persistent chat rooms and voice channels which can be accessed via invite links. Discord runs on Windows, macOS, Android, iOS, iPadOS, Linux, and in web browsers.',
    developers: const ['Discord, Inc'],
    technologies: const [
      'JavaScript',
      'React',
      'Elixir',
      'Python',
      'Rust',
      'C++'
    ],
    locales: const ['English'],
    appSize: 260,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Linear',
    rating: 5,
    categories: const {AppCategory.productivity, AppCategory.tools},
    id: 7,
    icon: Image.network(
      'https://asset.brandfetch.io/iduDa181eM/idOReMseAv.png',
    ),
    version: Version(1, 8, 0),
    briefDescription: 'Linear is an application for tracking issues.',
    description:
        'Linear helps streamline software projects, sprints, tasks, and bug tracking. It’s built for high-performance teams.',
    developers: const ['Linear Orbit, Inc.'],
    technologies: const ['JavaScript', 'React', 'TypeScript'],
    locales: const ['English'],
    appSize: 100,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Minecraft',
    rating: 5,
    categories: const {AppCategory.games, AppCategory.entertainment},
    id: 8,
    icon: Image.network(
      'https://play-lh.googleusercontent.com/VSwHQjcAttxsLE47RuS4PqpC4LT7lCoSjE7Hx5AW_yCxtDvcnsHHvm5CTuL5BPN-uRTP',
    ),
    version: Version(1, 8, 0),
    briefDescription: 'Minecraft is a sandbox video game developed by Mojang.',
    description:
        'Minecraft is a sandbox video game developed by Mojang. The game was created by Markus "Notch" Persson in the Java programming language. Following several early private testing versions, it was first made public in May 2009 before fully releasing in November 2011, with Notch stepping down and Jens "Jeb" Bergensten taking over development.',
    developers: const ['Mojang Studios'],
    technologies: const ['Java', 'C++'],
    locales: const ['English'],
    appSize: 400,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Square Charge',
    rating: 5,
    categories: const {AppCategory.finance, AppCategory.business},
    id: 9,
    icon: Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Square%2C_Inc._-_Square_logo.svg/240px-Square%2C_Inc._-_Square_logo.svg.png',
    ),
    version: Version(3, 4, 0),
    briefDescription: 'Square Charge is a desktop app for digital payments',
    description:
        'Never miss a sale again with Square Charge for Desktop, a free app that lets you process digital payments quickly and easily no matter where you are.',
    developers: const ['Block, Inc.'],
    technologies: const ['Objective-C', 'Swift'],
    locales: const ['English'],
    appSize: 70,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Duolingo',
    rating: 5,
    categories: const {AppCategory.education},
    id: 10,
    icon: Image.network(
      'https://seeklogo.com/images/D/duolingo-logo-23407F109C-seeklogo.com.png',
    ),
    version: Version(2, 2, 0),
    briefDescription: 'Duolingo is a free language-learning platform.',
    description:
        'With Duoligno users can practice vocabulary, grammar, and pronunciation using spaced repetition. Duolingo offers over 100 total courses across 41 distinct languages, from Spanish, French, German and Japanese to Navajo and Yiddish. It also includes a small variety of constructed languages.',
    developers: const ['Duolingo, Inc.'],
    technologies: const [
      'Swift',
      'Kotlin',
      'React',
      'Python',
      'Scala',
      'JavaScript'
    ],
    locales: const ['English'],
    appSize: 340,
    source: AppSources.proprietary,
    donationLinks: const {},
  ),
  AppItemModel(
    name: 'Workrave',
    rating: 5,
    categories: const {AppCategory.fitness, AppCategory.health},
    id: 11,
    icon: Image.network(
      'https://www.zwodnik.com/media/cache/30/95/3095324eb4d446d6930f1354d52d4190.png',
    ),
    version: Version(1, 99, 6),
    briefDescription:
        'Workrave is a free program that assists in the recovery and prevention of Repetitive Strain Injury (RSI).',
    description:
        'Workrave monitors your keyboard and mouse usage and using this information, it frequently alerts you to take microbreaks, rest breaks and restricts you to your daily computer usage.',
    developers: const ['Rob Caelers'],
    technologies: const [
      'C++',
      'C',
    ],
    locales: const ['English'],
    appSize: 50,
    source: AppSources.foss,
    donationLinks: const {},
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
