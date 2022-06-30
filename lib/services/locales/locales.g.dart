// @dart=2.12

import 'dart:ui';

// ignore_for_file: avoid_escaping_inner_quotes
// ignore_for_file: eol_at_end_of_file
class Locales {
  Locales._();

  static List<Locale> get supported => [
        const Locale("en", "US"),
        const Locale("hr", "HR"),
      ];

  static Map<String, Map<String, String>> get data => {
        _$LocaleEnUS().locale: _$LocaleEnUS().data,
        _$LocaleHrHR().locale: _$LocaleHrHR().data,
      };

  static Map<String, int> get stringData => {
        _$LocaleEnUS().locale: _$LocaleEnUS().translatedStrings,
        _$LocaleHrHR().locale: _$LocaleHrHR().translatedStrings,
      };
}

abstract class _$LocaleBase {
  String? locale;
  Map<String, String>? data;
  int? translatedStrings;
}

class _$LocaleEnUS extends _$LocaleBase {
  @override
  String get locale => "en-US";

  @override
  Map<String, String> get data => {
        "category.all": "All",
        "category.design": "Design",
        "category.games": "Games",
        "category.entertainment": "Entertainment",
        "category.development": "Development",
        "category.music": "Music",
        "category.productivity": "Productivity",
        "category.tools": "Tools",
        "category.finance": "Finance",
        "category.health_and_well_being": "Health and well-being",
        "category.education": "Education",
        "category.fitness": "Fitness",
        "category.communication": "Communication",
        "category.business": "Business",
        "topic.show_all": "Show all categories",
        "topic.trending": "Trending",
        "topic.trending_hint": "Show all trending applications",
        "topic.featured": "Featured",
        "topic.featured_hint": "Show all featured applications",
        "topic.newTopic": "New",
        "topic.new_hint": "Show all recently added applications",
        "app_page.name": "Application",
        "app_page.short_description": "Description",
        "app_page.category": "Category",
        "app_page.download": "Download",
        "app_page.download_dialog_title": "Are you sure you want to install?",
        "app_page.download_dialog_description":
            "If you are sure you want to install this application press Yes, otherwise press No.",
        "app_page.download_dialog_confirm_installation": "Yes",
        "app_page.download_dialog_cancel_installation": "No",
        "app_page.donate": "Donate",
        "app_page.donate_dialog_title": "Donate to the application developer",
        "app_page.donate_dialog_description":
            "If you wish to support the development of the application, please click on the donation links below.",
        "app_page.donate_dialog_close": "Close",
        "app_page.information_developer_hint": "Developer",
        "app_page.information_technology_hint": "Technology",
        "app_page.information_trending_hint": "Trending position",
        "app_page.information_locale": "English",
        "app_page.information_locale_hint": "Locale",
        "app_page.information_size_hint": "Size",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Source",
        "app_page.information_age_appropriatness_hint": "Age appropriatness",
        "app_page.long_description_title": "Description",
        "app_page.long_description_content":
            "Insert application description here.",
        "app_page.images": "Images",
        "app_page.reviews": "Reviews",
        "app_page.similar_applications": "Similar applications",
        "settings.theme_mode": "Theme mode",
        "settings.dark_mode": "Dark mode",
        "settings.dark_mode_description": "Turn on dark mode",
        "settings.locale": "Locale",
        "settings.locale_title": "Locale",
        "settings.locale_description": "Change the locale",
        "searchbar.hint": "Search applications",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleHrHR extends _$LocaleBase {
  @override
  String get locale => "hr-HR";

  @override
  Map<String, String> get data => {
        "category.all": "Sve",
        "category.design": "Dizajn",
        "category.games": "Igre",
        "category.entertainment": "Zabava",
        "category.development": "Razvoj",
        "category.music": "Glazba",
        "category.productivity": "Produktivnost",
        "category.tools": "Alati",
        "category.finance": "Financije",
        "category.health_and_well_being": "Zdravlje i dobrobit",
        "category.education": "Obrazovanje",
        "category.fitness": "Fitness",
        "category.communication": "Komunikacija",
        "category.business": "Posao",
        "topic.show_all": "Prikaži sve kategorije",
        "topic.trending": "U trendu",
        "topic.trending_hint": "Prikaži sve popularne aplikacije",
        "topic.featured": "Istaknuto",
        "topic.featured_hint": "Prikaži sve istaknute aplikacije",
        "topic.newTopic": "Novo",
        "topic.new_hint": "Prikaži sve nedavno dodane aplikacije",
        "app_page.name": "Aplikacija",
        "app_page.short_description": "Opis",
        "app_page.category": "Kategorija",
        "app_page.download": "Preuzmi",
        "app_page.download_dialog_title":
            "Jeste li sigurni da želite instalirati?",
        "app_page.download_dialog_description":
            "Ako ste sigurni da želite instalirati ovu aplikaciju pritisnite Da, u suprotnom pritisnite Ne.",
        "app_page.download_dialog_confirm_installation": "Da",
        "app_page.download_dialog_cancel_installation": "Ne",
        "app_page.donate": "Donirajte",
        "app_page.donate_dialog_title":
            "Donirajte razvojnom programeru aplikacije",
        "app_page.donate_dialog_description":
            "Ako želite podržati razvoj aplikacije, kliknite na linkove za donacije u nastavku.",
        "app_page.donate_dialog_close": "Zatvori",
        "app_page.information_developer_hint": "Razvojni programer",
        "app_page.information_technology_hint": "Tehnologija",
        "app_page.information_trending_hint": "Pozicija u trendu",
        "app_page.information_locale": "Engleski",
        "app_page.information_locale_hint": "Jezik",
        "app_page.information_size_hint": "Veličina",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Izvor",
        "app_page.information_age_appropriatness_hint": "Prikladnost dobi",
        "app_page.long_description_title": "Opis",
        "app_page.long_description_content": "Ovdje umetnite opis aplikacije.",
        "app_page.images": "Slike",
        "app_page.reviews": "Recenzije",
        "app_page.similar_applications": "Slične aplikacije",
        "settings.theme_mode": "Način teme",
        "settings.dark_mode": "Tamni način rada",
        "settings.dark_mode_description": "Uključite tamni način rada",
        "settings.locale": "Jezik",
        "settings.locale_title": "Jezik",
        "settings.locale_description": "Promijenite jezik",
        "searchbar.hint": "Pretraži aplikacije",
      };

  @override
  int get translatedStrings => 54;
}
