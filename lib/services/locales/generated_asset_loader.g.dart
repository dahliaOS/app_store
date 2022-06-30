import 'dart:ui';
import 'package:app_store/services/locales/locales.g.dart';
import 'package:easy_localization/easy_localization.dart';
class GeneratedAssetLoader extends AssetLoader {
  @override
  Future<Map<String, String>> load(String path, Locale locale) async {
    return Locales.data[locale.toLanguageTag()] ?? {};
  }
}
