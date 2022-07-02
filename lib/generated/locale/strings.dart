import 'package:yatl_gen/yatl_gen.dart';
import 'package:yatl/yatl.dart';

class CategoryLocaleStrings extends LocaleStrings {
  const CategoryLocaleStrings._(YatlCore core) : super(core);

  String get all {
    return core.translate("category.all");
  }

  String get design {
    return core.translate("category.design");
  }

  String get games {
    return core.translate("category.games");
  }

  String get entertainment {
    return core.translate("category.entertainment");
  }

  String get development {
    return core.translate("category.development");
  }

  String get music {
    return core.translate("category.music");
  }

  String get productivity {
    return core.translate("category.productivity");
  }

  String get tools {
    return core.translate("category.tools");
  }

  String get finance {
    return core.translate("category.finance");
  }

  String get healthAndWellBeing {
    return core.translate("category.health_and_well_being");
  }

  String get education {
    return core.translate("category.education");
  }

  String get fitness {
    return core.translate("category.fitness");
  }

  String get communication {
    return core.translate("category.communication");
  }

  String get business {
    return core.translate("category.business");
  }
}

class TopicLocaleStrings extends LocaleStrings {
  const TopicLocaleStrings._(YatlCore core) : super(core);

  String get showAll {
    return core.translate("topic.show_all");
  }

  String get trending {
    return core.translate("topic.trending");
  }

  String get trendingHint {
    return core.translate("topic.trending_hint");
  }

  String get featured {
    return core.translate("topic.featured");
  }

  String get featuredHint {
    return core.translate("topic.featured_hint");
  }

  String get newTopic {
    return core.translate("topic.newTopic");
  }

  String get newHint {
    return core.translate("topic.new_hint");
  }
}

class AppPageLocaleStrings extends LocaleStrings {
  const AppPageLocaleStrings._(YatlCore core) : super(core);

  String get name {
    return core.translate("app_page.name");
  }

  String get shortDescription {
    return core.translate("app_page.short_description");
  }

  String get category {
    return core.translate("app_page.category");
  }

  String get download {
    return core.translate("app_page.download");
  }

  String get downloadDialogTitle {
    return core.translate("app_page.download_dialog_title");
  }

  String get downloadDialogDescription {
    return core.translate("app_page.download_dialog_description");
  }

  String get downloadDialogConfirmInstallation {
    return core.translate("app_page.download_dialog_confirm_installation");
  }

  String get downloadDialogCancelInstallation {
    return core.translate("app_page.download_dialog_cancel_installation");
  }

  String get donate {
    return core.translate("app_page.donate");
  }

  String get donateDialogTitle {
    return core.translate("app_page.donate_dialog_title");
  }

  String get donateDialogDescription {
    return core.translate("app_page.donate_dialog_description");
  }

  String get donateDialogClose {
    return core.translate("app_page.donate_dialog_close");
  }

  String get informationDeveloperHint {
    return core.translate("app_page.information_developer_hint");
  }

  String get informationTechnologyHint {
    return core.translate("app_page.information_technology_hint");
  }

  String get informationTrendingHint {
    return core.translate("app_page.information_trending_hint");
  }

  String get informationLocale {
    return core.translate("app_page.information_locale");
  }

  String get informationLocaleHint {
    return core.translate("app_page.information_locale_hint");
  }

  String get informationSizeHint {
    return core.translate("app_page.information_size_hint");
  }

  String get informationSource {
    return core.translate("app_page.information_source");
  }

  String get informationSourceHint {
    return core.translate("app_page.information_source_hint");
  }

  String get informationAgeAppropriatnessHint {
    return core.translate("app_page.information_age_appropriatness_hint");
  }

  String get longDescriptionTitle {
    return core.translate("app_page.long_description_title");
  }

  String get longDescriptionContent {
    return core.translate("app_page.long_description_content");
  }

  String get images {
    return core.translate("app_page.images");
  }

  String get reviews {
    return core.translate("app_page.reviews");
  }

  String get similarApplications {
    return core.translate("app_page.similar_applications");
  }
}

class SettingsLocaleStrings extends LocaleStrings {
  const SettingsLocaleStrings._(YatlCore core) : super(core);

  String get themeMode {
    return core.translate("settings.theme_mode");
  }

  String get darkMode {
    return core.translate("settings.dark_mode");
  }

  String get darkModeDescription {
    return core.translate("settings.dark_mode_description");
  }

  String get locale {
    return core.translate("settings.locale");
  }

  String get localeTitle {
    return core.translate("settings.locale_title");
  }

  String get localeDescription {
    return core.translate("settings.locale_description");
  }
}

class SearchbarLocaleStrings extends LocaleStrings {
  const SearchbarLocaleStrings._(YatlCore core) : super(core);

  String get hint {
    return core.translate("searchbar.hint");
  }
}

class GeneratedLocaleStrings extends LocaleStrings {
  GeneratedLocaleStrings(YatlCore core) : super(core);

  late final CategoryLocaleStrings category = CategoryLocaleStrings._(core);

  late final TopicLocaleStrings topic = TopicLocaleStrings._(core);

  late final AppPageLocaleStrings appPage = AppPageLocaleStrings._(core);

  late final SettingsLocaleStrings settings = SettingsLocaleStrings._(core);

  late final SearchbarLocaleStrings searchbar = SearchbarLocaleStrings._(core);
}
