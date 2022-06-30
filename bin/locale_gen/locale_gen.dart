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

import 'gen/asset_loader_generator.dart';
import 'gen/key_generator.dart';
import 'gen/locale_generator.dart';

const String _localeFolder = "assets/locales";
const String _outputFolder = "lib/services/locales";
const String _defaultLocale = "en-US";
Future<void> main(List<String> args) async {
  final LocaleGenerator _localeGen =
      LocaleGenerator(_localeFolder, _outputFolder);
  await _localeGen.generate();
  final AssetLoaderGenerator _assetLoaderGen =
      AssetLoaderGenerator(_outputFolder);
  await _assetLoaderGen.generate();
  final KeyGenerator _keyGen = KeyGenerator(
    _localeFolder,
    _outputFolder,
    _defaultLocale,
  );
  await _keyGen.generate();

  // ignore: avoid_print
  print("Files generated inside $_outputFolder");
  return;
}
