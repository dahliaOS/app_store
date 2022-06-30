/*
MIT License

Copyright (c) 2020 Davide Bianco (HrX03)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
*/

import 'dart:io';

class AssetLoaderGenerator {
  final String outputDir;

  AssetLoaderGenerator(this.outputDir);

  Future<void> generate() async {
    final File file = File("$outputDir/generated_asset_loader.g.dart");
    await file.writeAsString(_class);
  }
}

String _class = """
import 'dart:ui';
import 'package:app_store/services/locales/locales.g.dart';
import 'package:easy_localization/easy_localization.dart';
class GeneratedAssetLoader extends AssetLoader {
  @override
  Future<Map<String, String>> load(String path, Locale locale) async {
    return Locales.data[locale.toLanguageTag()] ?? {};
  }
}
""";
