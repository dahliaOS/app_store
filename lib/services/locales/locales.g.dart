// @dart=2.12

import 'dart:ui';

// ignore_for_file: avoid_escaping_inner_quotes
// ignore_for_file: eol_at_end_of_file
class Locales {
  Locales._();

  static List<Locale> get supported => [
        const Locale("ar", "SA"),
        const Locale("cs", "CZ"),
        const Locale("da", "DK"),
        const Locale("de", "AT"),
        const Locale("de", "CH"),
        const Locale("de", "DE"),
        const Locale("el", "GR"),
        const Locale("en", "US"),
        const Locale("es", "ES"),
        const Locale("fi", "FI"),
        const Locale("fr", "FR"),
        const Locale("hr", "HR"),
        const Locale("it", "IT"),
        const Locale("ja", "JP"),
        const Locale("nl", "BE"),
        const Locale("nl", "NL"),
        const Locale("no", "NO"),
        const Locale("pl", "PL"),
        const Locale("pt", "BR"),
        const Locale("pt", "PT"),
        const Locale("ro", "RO"),
        const Locale("ru", "RU"),
        const Locale("sv", "SE"),
        const Locale("uk", "UA"),
        const Locale("zh", "CN"),
      ];

  static Map<String, Map<String, String>> get data => {
        _$LocaleArSA().locale: _$LocaleArSA().data,
        _$LocaleCsCZ().locale: _$LocaleCsCZ().data,
        _$LocaleDaDK().locale: _$LocaleDaDK().data,
        _$LocaleDeAT().locale: _$LocaleDeAT().data,
        _$LocaleDeCH().locale: _$LocaleDeCH().data,
        _$LocaleDeDE().locale: _$LocaleDeDE().data,
        _$LocaleElGR().locale: _$LocaleElGR().data,
        _$LocaleEnUS().locale: _$LocaleEnUS().data,
        _$LocaleEsES().locale: _$LocaleEsES().data,
        _$LocaleFiFI().locale: _$LocaleFiFI().data,
        _$LocaleFrFR().locale: _$LocaleFrFR().data,
        _$LocaleHrHR().locale: _$LocaleHrHR().data,
        _$LocaleItIT().locale: _$LocaleItIT().data,
        _$LocaleJaJP().locale: _$LocaleJaJP().data,
        _$LocaleNlBE().locale: _$LocaleNlBE().data,
        _$LocaleNlNL().locale: _$LocaleNlNL().data,
        _$LocaleNoNO().locale: _$LocaleNoNO().data,
        _$LocalePlPL().locale: _$LocalePlPL().data,
        _$LocalePtBR().locale: _$LocalePtBR().data,
        _$LocalePtPT().locale: _$LocalePtPT().data,
        _$LocaleRoRO().locale: _$LocaleRoRO().data,
        _$LocaleRuRU().locale: _$LocaleRuRU().data,
        _$LocaleSvSE().locale: _$LocaleSvSE().data,
        _$LocaleUkUA().locale: _$LocaleUkUA().data,
        _$LocaleZhCN().locale: _$LocaleZhCN().data,
      };

  static Map<String, int> get stringData => {
        _$LocaleArSA().locale: _$LocaleArSA().translatedStrings,
        _$LocaleCsCZ().locale: _$LocaleCsCZ().translatedStrings,
        _$LocaleDaDK().locale: _$LocaleDaDK().translatedStrings,
        _$LocaleDeAT().locale: _$LocaleDeAT().translatedStrings,
        _$LocaleDeCH().locale: _$LocaleDeCH().translatedStrings,
        _$LocaleDeDE().locale: _$LocaleDeDE().translatedStrings,
        _$LocaleElGR().locale: _$LocaleElGR().translatedStrings,
        _$LocaleEnUS().locale: _$LocaleEnUS().translatedStrings,
        _$LocaleEsES().locale: _$LocaleEsES().translatedStrings,
        _$LocaleFiFI().locale: _$LocaleFiFI().translatedStrings,
        _$LocaleFrFR().locale: _$LocaleFrFR().translatedStrings,
        _$LocaleHrHR().locale: _$LocaleHrHR().translatedStrings,
        _$LocaleItIT().locale: _$LocaleItIT().translatedStrings,
        _$LocaleJaJP().locale: _$LocaleJaJP().translatedStrings,
        _$LocaleNlBE().locale: _$LocaleNlBE().translatedStrings,
        _$LocaleNlNL().locale: _$LocaleNlNL().translatedStrings,
        _$LocaleNoNO().locale: _$LocaleNoNO().translatedStrings,
        _$LocalePlPL().locale: _$LocalePlPL().translatedStrings,
        _$LocalePtBR().locale: _$LocalePtBR().translatedStrings,
        _$LocalePtPT().locale: _$LocalePtPT().translatedStrings,
        _$LocaleRoRO().locale: _$LocaleRoRO().translatedStrings,
        _$LocaleRuRU().locale: _$LocaleRuRU().translatedStrings,
        _$LocaleSvSE().locale: _$LocaleSvSE().translatedStrings,
        _$LocaleUkUA().locale: _$LocaleUkUA().translatedStrings,
        _$LocaleZhCN().locale: _$LocaleZhCN().translatedStrings,
      };
}

abstract class _$LocaleBase {
  String? locale;
  Map<String, String>? data;
  int? translatedStrings;
}

class _$LocaleArSA extends _$LocaleBase {
  @override
  String get locale => "ar-SA";

  @override
  Map<String, String> get data => {
        "category.all": "الكل",
        "category.design": "تصميم",
        "category.games": "ألعاب",
        "category.entertainment": "الترفيه",
        "category.development": "التطوير",
        "category.music": "الموسيقى",
        "category.productivity": "الإنتاجية",
        "category.tools": "أدوات",
        "category.finance": "المالية",
        "category.health_and_well_being": "الصحة والرفاه",
        "category.education": "التعليم",
        "category.fitness": "اللياقة",
        "category.communication": "الاتصال",
        "category.business": "الأعمال",
        "topic.show_all": "إظهار جميع الفئات",
        "topic.trending": "متداولة",
        "topic.trending_hint": "إظهار جميع التطبيقات المتجهة",
        "topic.featured": "مميز",
        "topic.featured_hint": "إظهار جميع التطبيقات المميزة",
        "topic.newTopic": "جديد",
        "topic.new_hint": "إظهار جميع التطبيقات المضافة مؤخرا",
        "app_page.name": "تطبيق",
        "app_page.short_description": "الوصف",
        "app_page.category": "الفئة",
        "app_page.download": "تنزيل",
        "app_page.download_dialog_title": "هل أنت متأكد من أنك تريد التثبيت؟",
        "app_page.download_dialog_description":
            "إذا كنت متأكداً من أنك تريد تثبيت هذا التطبيق اضغط نعم، وإلا إضغط على رقم",
        "app_page.download_dialog_confirm_installation": "نعم",
        "app_page.download_dialog_cancel_installation": "لا",
        "app_page.donate": "تبرع",
        "app_page.donate_dialog_title": "تبرع لمطور التطبيق",
        "app_page.donate_dialog_description":
            "إذا كنت ترغب في دعم تطوير التطبيق، يرجى النقر على روابط التبرع أدناه.",
        "app_page.donate_dialog_close": "أغلق",
        "app_page.information_developer_hint": "المطور",
        "app_page.information_technology_hint": "التكنولوجيا",
        "app_page.information_trending_hint": "المكانة المتداولة",
        "app_page.information_locale": "الإنكليزية",
        "app_page.information_locale_hint": "محلي",
        "app_page.information_size_hint": "الحجم",
        "app_page.information_source": "البرمجيات",
        "app_page.information_source_hint": "المصدر",
        "app_page.information_age_appropriatness_hint": "مدى ملاءمة العمر",
        "app_page.long_description_title": "الوصف",
        "app_page.long_description_content": "أدخل وصف التطبيق هنا.",
        "app_page.images": "الصور",
        "app_page.reviews": "عمليات المراجعة",
        "app_page.similar_applications": "تطبيقات مشابهة",
        "settings.theme_mode": "وضع السمة",
        "settings.dark_mode": "الوضع المظلم",
        "settings.dark_mode_description": "تشغيل الوضع المظلم",
        "settings.locale": "محلي",
        "settings.locale_title": "محلي",
        "settings.locale_description": "تغيير اللغة المحلية",
        "searchbar.hint": "البحث عن التطبيقات",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleCsCZ extends _$LocaleBase {
  @override
  String get locale => "cs-CZ";

  @override
  Map<String, String> get data => {
        "category.all": "Vše",
        "category.design": "Vzhled",
        "category.games": "Hry",
        "category.entertainment": "Zábava",
        "category.development": "Rozvoj",
        "category.music": "Hudba",
        "category.productivity":
            "Průměrné prodejní ceny výrobního odvětví Unie účtované odběratelům v Unii, kteří nejsou ve spojení, se v posuzovaném období vyvíjely takto:",
        "category.tools": "Nástroje a nářadí",
        "category.finance": "Finanční prostředky",
        "category.health_and_well_being": "Zdraví a dobré životní podmínky",
        "category.education": "Vzdělávání",
        "category.fitness": "Vhodnost",
        "category.communication": "Komunikace",
        "category.business": "Podniky",
        "topic.show_all": "Zobrazit všechny kategorie",
        "topic.trending": "Populární",
        "topic.trending_hint": "Zobrazit všechny populární aplikace",
        "topic.featured": "Doporučené",
        "topic.featured_hint": "Zobrazit všechny doporučené aplikace",
        "topic.newTopic": "Nové",
        "topic.new_hint": "Zobrazit všechny nedávno přidané aplikace",
        "app_page.name": "Žádost",
        "app_page.short_description": "L 343, 22.12.2009, s. 1).",
        "app_page.category": "Kategorie",
        "app_page.download": "Stáhnout",
        "app_page.download_dialog_title":
            "Jste si jisti, že chcete nainstalovat?",
        "app_page.download_dialog_description":
            "Pokud jste si jisti, že chcete nainstalovat tuto aplikaci, stiskněte Ano, jinak stiskněte Ne.",
        "app_page.download_dialog_confirm_installation": "Ano",
        "app_page.download_dialog_cancel_installation": "Ne",
        "app_page.donate": "Přispět",
        "app_page.donate_dialog_title": "Přispějte vývojáři aplikace",
        "app_page.donate_dialog_description":
            "Pokud chcete podpořit vývoj aplikace, klikněte prosím na níže uvedené odkazy.",
        "app_page.donate_dialog_close": "Zavřít",
        "app_page.information_developer_hint": "Vývojář",
        "app_page.information_technology_hint": "Technologie",
        "app_page.information_trending_hint": "Populární pozice",
        "app_page.information_locale": "Anglické",
        "app_page.information_locale_hint": "Místní prostředí",
        "app_page.information_size_hint": "Velikost",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Zdroj",
        "app_page.information_age_appropriatness_hint": "Přiměřenost věku",
        "app_page.long_description_title": "L 343, 22.12.2009, s. 1).",
        "app_page.long_description_content": "Zde vložte popis aplikace.",
        "app_page.images": "Obrázky",
        "app_page.reviews": "Recenze",
        "app_page.similar_applications": "Podobné aplikace",
        "settings.theme_mode": "Režim motivu",
        "settings.dark_mode": "Tmavý režim",
        "settings.dark_mode_description": "Zapnout tmavý režim",
        "settings.locale": "Místní prostředí",
        "settings.locale_title": "Místní prostředí",
        "settings.locale_description": "Změnit národní prostředí",
        "searchbar.hint": "Hledat aplikace",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleDaDK extends _$LocaleBase {
  @override
  String get locale => "da-DK";

  @override
  Map<String, String> get data => {
        "category.all": "Alle",
        "category.design": "Design",
        "category.games": "Spil",
        "category.entertainment": "Underholdning",
        "category.development": "Udvikling",
        "category.music": "Musik",
        "category.productivity": "Produktivitet",
        "category.tools": "Værktøjer",
        "category.finance": "Finans",
        "category.health_and_well_being": "Sundhed og trivsel",
        "category.education": "Uddannelse",
        "category.fitness": "Fitness",
        "category.communication": "Kommunikation",
        "category.business": "Forretning",
        "topic.show_all": "Vis alle kategorier",
        "topic.trending": "Populære",
        "topic.trending_hint": "Vis alle aktuelle programmer",
        "topic.featured": "Fremhævet",
        "topic.featured_hint": "Vis alle fremhævede programmer",
        "topic.newTopic": "Ny",
        "topic.new_hint": "Vis alle nyligt tilføjede programmer",
        "app_page.name": "Anvendelse",
        "app_page.short_description": "Varebeskrivelse",
        "app_page.category": "Kategori",
        "app_page.download": "Hent",
        "app_page.download_dialog_title": "Er du sikker på du vil installere?",
        "app_page.download_dialog_description":
            "Hvis du er sikker på, at du vil installere dette program, tryk på Ja, ellers tryk på Nej.",
        "app_page.download_dialog_confirm_installation": "Ja",
        "app_page.download_dialog_cancel_installation": "Nej",
        "app_page.donate": "Donér",
        "app_page.donate_dialog_title": "Donér til programudvikleren",
        "app_page.donate_dialog_description":
            "Hvis du ønsker at støtte udviklingen af ansøgningen, skal du klikke på nedenstående donationslinks.",
        "app_page.donate_dialog_close": "Luk",
        "app_page.information_developer_hint": "Udvikler",
        "app_page.information_technology_hint": "Teknologi",
        "app_page.information_trending_hint": "Populære position",
        "app_page.information_locale": "Engelsk",
        "app_page.information_locale_hint": "Landestandard",
        "app_page.information_size_hint": "Størrelse",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Kilde",
        "app_page.information_age_appropriatness_hint": "Alders egnethed",
        "app_page.long_description_title": "Varebeskrivelse",
        "app_page.long_description_content": "Indsæt programbeskrivelse her.",
        "app_page.images": "Billeder",
        "app_page.reviews": "Anmeldelser",
        "app_page.similar_applications": "Lignende programmer",
        "settings.theme_mode": "Tema tilstand",
        "settings.dark_mode": "Mørk tilstand",
        "settings.dark_mode_description": "Slå mørk tilstand til",
        "settings.locale": "Landestandard",
        "settings.locale_title": "Landestandard",
        "settings.locale_description": "Skift landestandard",
        "searchbar.hint": "Søg efter programmer",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleDeAT extends _$LocaleBase {
  @override
  String get locale => "de-AT";

  @override
  Map<String, String> get data => {
        "category.all": "Alle",
        "category.design": "Design",
        "category.games": "Spiele",
        "category.entertainment": "Unterhaltung",
        "category.development": "Entwicklung",
        "category.music": "Musik",
        "category.productivity": "Produktivität",
        "category.tools": "Werkzeuge",
        "category.finance": "Finanzen",
        "category.health_and_well_being": "Gesundheit und Wohlbefinden",
        "category.education": "Bildung",
        "category.fitness": "Fitness",
        "category.communication": "Kommunikation",
        "category.business": "Geschäftlich",
        "topic.show_all": "Alle Kategorien anzeigen",
        "topic.trending": "Beliebt",
        "topic.trending_hint": "Alle angesagten Anwendungen anzeigen",
        "topic.featured": "Empfohlen",
        "topic.featured_hint": "Alle empfohlenen Anwendungen anzeigen",
        "topic.newTopic": "Neu",
        "topic.new_hint": "Alle zuletzt hinzugefügten Apps anzeigen",
        "app_page.name": "Anwendung",
        "app_page.short_description": "Beschreibung",
        "app_page.category": "Kategorie",
        "app_page.download": "Download",
        "app_page.download_dialog_title":
            "Sind Sie sicher, dass Sie installieren möchten?",
        "app_page.download_dialog_description":
            "Wenn Sie sicher sind, dass Sie diese Anwendung installieren möchten, drücken Sie Ja, ansonsten drücken Sie die Taste Nein.",
        "app_page.download_dialog_confirm_installation": "Ja",
        "app_page.download_dialog_cancel_installation": "Nein",
        "app_page.donate": "Spenden",
        "app_page.donate_dialog_title": "Spende an den Anwendungsentwickler",
        "app_page.donate_dialog_description":
            "Wenn Sie die Entwicklung der Applikation unterstützen möchten, klicken Sie bitte auf die Spenden-Links unten.",
        "app_page.donate_dialog_close": "Schließen",
        "app_page.information_developer_hint": "Entwickler",
        "app_page.information_technology_hint": "Technik",
        "app_page.information_trending_hint": "Angesagte Position",
        "app_page.information_locale": "Englisch",
        "app_page.information_locale_hint": "Lokal",
        "app_page.information_size_hint": "Größe",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Quelle",
        "app_page.information_age_appropriatness_hint": "Alter Angemessenheit",
        "app_page.long_description_title": "Beschreibung",
        "app_page.long_description_content":
            "Anwendungsbeschreibung hier einfügen.",
        "app_page.images": "Bilder",
        "app_page.reviews": "Bewertungen",
        "app_page.similar_applications": "Ähnliche Anwendungen",
        "settings.theme_mode": "Theme-Modus",
        "settings.dark_mode": "Dunkler Modus",
        "settings.dark_mode_description": "Dunkler Modus aktivieren",
        "settings.locale": "Lokal",
        "settings.locale_title": "Lokal",
        "settings.locale_description": "Gebietsschema ändern",
        "searchbar.hint": "Anwendungen suchen",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleDeCH extends _$LocaleBase {
  @override
  String get locale => "de-CH";

  @override
  Map<String, String> get data => {
        "category.all": "Alle",
        "category.design": "Design",
        "category.games": "Spiele",
        "category.entertainment": "Unterhaltung",
        "category.development": "Entwicklung",
        "category.music": "Musik",
        "category.productivity": "Produktivität",
        "category.tools": "Werkzeuge",
        "category.finance": "Finanzen",
        "category.health_and_well_being": "Gesundheit und Wohlbefinden",
        "category.education": "Bildung",
        "category.fitness": "Fitness",
        "category.communication": "Kommunikation",
        "category.business": "Geschäftlich",
        "topic.show_all": "Alle Kategorien anzeigen",
        "topic.trending": "Beliebt",
        "topic.trending_hint": "Alle angesagten Anwendungen anzeigen",
        "topic.featured": "Empfohlen",
        "topic.featured_hint": "Alle empfohlenen Anwendungen anzeigen",
        "topic.newTopic": "Neu",
        "topic.new_hint": "Alle zuletzt hinzugefügten Apps anzeigen",
        "app_page.name": "Anwendung",
        "app_page.short_description": "Beschreibung",
        "app_page.category": "Kategorie",
        "app_page.download": "Download",
        "app_page.download_dialog_title":
            "Sind Sie sicher, dass Sie installieren möchten?",
        "app_page.download_dialog_description":
            "Wenn Sie sicher sind, dass Sie diese Anwendung installieren möchten, drücken Sie Ja, ansonsten drücken Sie die Taste Nein.",
        "app_page.download_dialog_confirm_installation": "Ja",
        "app_page.download_dialog_cancel_installation": "Nein",
        "app_page.donate": "Spenden",
        "app_page.donate_dialog_title": "Spende an den Anwendungsentwickler",
        "app_page.donate_dialog_description":
            "Wenn Sie die Entwicklung der Applikation unterstützen möchten, klicken Sie bitte auf die Spenden-Links unten.",
        "app_page.donate_dialog_close": "Schließen",
        "app_page.information_developer_hint": "Entwickler",
        "app_page.information_technology_hint": "Technik",
        "app_page.information_trending_hint": "Angesagte Position",
        "app_page.information_locale": "Englisch",
        "app_page.information_locale_hint": "Lokal",
        "app_page.information_size_hint": "Größe",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Quelle",
        "app_page.information_age_appropriatness_hint": "Alter Angemessenheit",
        "app_page.long_description_title": "Beschreibung",
        "app_page.long_description_content":
            "Anwendungsbeschreibung hier einfügen.",
        "app_page.images": "Bilder",
        "app_page.reviews": "Bewertungen",
        "app_page.similar_applications": "Ähnliche Anwendungen",
        "settings.theme_mode": "Theme-Modus",
        "settings.dark_mode": "Dunkler Modus",
        "settings.dark_mode_description": "Dunkler Modus aktivieren",
        "settings.locale": "Lokal",
        "settings.locale_title": "Lokal",
        "settings.locale_description": "Gebietsschema ändern",
        "searchbar.hint": "Anwendungen suchen",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleDeDE extends _$LocaleBase {
  @override
  String get locale => "de-DE";

  @override
  Map<String, String> get data => {
        "category.all": "Alle",
        "category.design": "Design",
        "category.games": "Spiele",
        "category.entertainment": "Unterhaltung",
        "category.development": "Entwicklung",
        "category.music": "Musik",
        "category.productivity": "Produktivität",
        "category.tools": "Werkzeuge",
        "category.finance": "Finanzen",
        "category.health_and_well_being": "Gesundheit und Wohlbefinden",
        "category.education": "Bildung",
        "category.fitness": "Fitness",
        "category.communication": "Kommunikation",
        "category.business": "Geschäftlich",
        "topic.show_all": "Alle Kategorien anzeigen",
        "topic.trending": "Beliebt",
        "topic.trending_hint": "Alle angesagten Anwendungen anzeigen",
        "topic.featured": "Empfohlen",
        "topic.featured_hint": "Alle empfohlenen Anwendungen anzeigen",
        "topic.newTopic": "Neu",
        "topic.new_hint": "Alle zuletzt hinzugefügten Apps anzeigen",
        "app_page.name": "Anwendung",
        "app_page.short_description": "Beschreibung",
        "app_page.category": "Kategorie",
        "app_page.download": "Download",
        "app_page.download_dialog_title":
            "Sind Sie sicher, dass Sie installieren möchten?",
        "app_page.download_dialog_description":
            "Wenn Sie sicher sind, dass Sie diese Anwendung installieren möchten, drücken Sie Ja, ansonsten drücken Sie die Taste Nein.",
        "app_page.download_dialog_confirm_installation": "Ja",
        "app_page.download_dialog_cancel_installation": "Nein",
        "app_page.donate": "Spenden",
        "app_page.donate_dialog_title": "Spende an den Anwendungsentwickler",
        "app_page.donate_dialog_description":
            "Wenn Sie die Entwicklung der Applikation unterstützen möchten, klicken Sie bitte auf die Spenden-Links unten.",
        "app_page.donate_dialog_close": "Schließen",
        "app_page.information_developer_hint": "Entwickler",
        "app_page.information_technology_hint": "Technik",
        "app_page.information_trending_hint": "Angesagte Position",
        "app_page.information_locale": "Englisch",
        "app_page.information_locale_hint": "Lokal",
        "app_page.information_size_hint": "Größe",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Quelle",
        "app_page.information_age_appropriatness_hint": "Alter Angemessenheit",
        "app_page.long_description_title": "Beschreibung",
        "app_page.long_description_content":
            "Anwendungsbeschreibung hier einfügen.",
        "app_page.images": "Bilder",
        "app_page.reviews": "Bewertungen",
        "app_page.similar_applications": "Ähnliche Anwendungen",
        "settings.theme_mode": "Theme-Modus",
        "settings.dark_mode": "Dunkler Modus",
        "settings.dark_mode_description": "Dunkler Modus aktivieren",
        "settings.locale": "Lokal",
        "settings.locale_title": "Lokal",
        "settings.locale_description": "Gebietsschema ändern",
        "searchbar.hint": "Anwendungen suchen",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleElGR extends _$LocaleBase {
  @override
  String get locale => "el-GR";

  @override
  Map<String, String> get data => {
        "category.all": "Όλα",
        "category.design": "Σχεδιασμός",
        "category.games": "Παιχνίδια",
        "category.entertainment": "Ψυχαγωγία",
        "category.development": "Ανάπτυξη",
        "category.music": "Μουσική",
        "category.productivity": "Παραγωγικότητα",
        "category.tools": "Εργαλεία",
        "category.finance": "Οικονομικά",
        "category.health_and_well_being": "Υγεία και ευεξία",
        "category.education": "Εκπαίδευση",
        "category.fitness": "Γυμναστήριο",
        "category.communication": "Επικοινωνία",
        "category.business": "Επιχείρηση",
        "topic.show_all": "Εμφάνιση όλων των κατηγοριών",
        "topic.trending": "Δημοφιλή",
        "topic.trending_hint": "Εμφάνιση όλων των trending εφαρμογών",
        "topic.featured": "Προτεινόμενα",
        "topic.featured_hint": "Εμφάνιση όλων των προτεινόμενων εφαρμογών",
        "topic.newTopic": "Νέο",
        "topic.new_hint":
            "Εμφάνιση όλων των εφαρμογών που προστέθηκαν πρόσφατα",
        "app_page.name": "Εφαρμογή",
        "app_page.short_description": "Περιγραφή",
        "app_page.category": "Κατηγορία",
        "app_page.download": "Λήψη",
        "app_page.download_dialog_title":
            "Είστε βέβαιοι ότι θέλετε να εγκαταστήσετε?",
        "app_page.download_dialog_description":
            "Εάν είστε σίγουροι ότι θέλετε να εγκαταστήσετε αυτήν την εφαρμογή πατήστε Ναι, αλλιώς πατήστε Νο.",
        "app_page.download_dialog_confirm_installation": "Ναι",
        "app_page.download_dialog_cancel_installation": "Όχι",
        "app_page.donate": "Δωρεά",
        "app_page.donate_dialog_title":
            "Δωρεά στον προγραμματιστή της εφαρμογής",
        "app_page.donate_dialog_description":
            "Αν θέλετε να υποστηρίξετε την ανάπτυξη της εφαρμογής, κάντε κλικ στους παρακάτω συνδέσμους δωρεάς.",
        "app_page.donate_dialog_close": "Κλείσιμο",
        "app_page.information_developer_hint": "Προγραμματιστής",
        "app_page.information_technology_hint": "Τεχνολογία",
        "app_page.information_trending_hint": "Ανερχόμενη θέση",
        "app_page.information_locale": "Αγγλικά",
        "app_page.information_locale_hint": "Τοπική",
        "app_page.information_size_hint": "Μέγεθος",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Πηγή",
        "app_page.information_age_appropriatness_hint": "Ικανότητα ηλικίας",
        "app_page.long_description_title": "Περιγραφή",
        "app_page.long_description_content":
            "Εισάγετε εδώ την περιγραφή της εφαρμογής.",
        "app_page.images": "Εικόνες",
        "app_page.reviews": "Κριτικές",
        "app_page.similar_applications": "Παρόμοιες εφαρμογές",
        "settings.theme_mode": "Λειτουργία θέματος",
        "settings.dark_mode": "Σκοτεινή λειτουργία",
        "settings.dark_mode_description": "Ενεργοποίηση σκοτεινής λειτουργίας",
        "settings.locale": "Τοπική",
        "settings.locale_title": "Τοπική",
        "settings.locale_description": "Αλλαγή της γλώσσας",
        "searchbar.hint": "Αναζήτηση εφαρμογών",
      };

  @override
  int get translatedStrings => 54;
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

class _$LocaleEsES extends _$LocaleBase {
  @override
  String get locale => "es-ES";

  @override
  Map<String, String> get data => {
        "category.all": "Todos",
        "category.design": "Diseño",
        "category.games": "Juegos",
        "category.entertainment": "Empresarial",
        "category.development": "Desarrollo",
        "category.music": "Música",
        "category.productivity": "Productividad",
        "category.tools": "Herramientas",
        "category.finance": "Finanzas",
        "category.health_and_well_being": "Salud y bienestar",
        "category.education": "Educación",
        "category.fitness": "Fitness",
        "category.communication": "Comunicación",
        "category.business": "Negocio",
        "topic.show_all": "Mostrar todas las categorías",
        "topic.trending": "Tendencias",
        "topic.trending_hint": "Mostrar todas las aplicaciones tendentes",
        "topic.featured": "Destacado",
        "topic.featured_hint": "Mostrar todas las aplicaciones destacadas",
        "topic.newTopic": "Nuevo",
        "topic.new_hint":
            "Mostrar todas las aplicaciones añadidas recientemente",
        "app_page.name": "Aplicación",
        "app_page.short_description": "Descripción",
        "app_page.category": "Categoría",
        "app_page.download": "Descargar",
        "app_page.download_dialog_title": "¿Está seguro de que desea instalar?",
        "app_page.download_dialog_description":
            "Si está seguro de que desea instalar esta aplicación, presione Sí, de lo contrario presione No.",
        "app_page.download_dialog_confirm_installation": "Sí",
        "app_page.download_dialog_cancel_installation": "Nu",
        "app_page.donate": "Donar",
        "app_page.donate_dialog_title":
            "Donar al desarrollador de aplicaciones",
        "app_page.donate_dialog_description":
            "Si desea apoyar el desarrollo de la aplicación, por favor haga clic en los siguientes enlaces de donación.",
        "app_page.donate_dialog_close": "Cerrar",
        "app_page.information_developer_hint": "Desarrollador",
        "app_page.information_technology_hint": "Tecnología",
        "app_page.information_trending_hint": "Posición de tendencia",
        "app_page.information_locale": "Inglés",
        "app_page.information_locale_hint": "Local",
        "app_page.information_size_hint": "Tamaño",
        "app_page.information_source": "SIEMPRE",
        "app_page.information_source_hint": "Fuente",
        "app_page.information_age_appropriatness_hint": "Capacidad de edad",
        "app_page.long_description_title": "Descripción",
        "app_page.long_description_content":
            "Inserte la descripción de la aplicación aquí.",
        "app_page.images": "Imágenes",
        "app_page.reviews": "Reseñas",
        "app_page.similar_applications": "Aplicaciones similares",
        "settings.theme_mode": "Modo de tema",
        "settings.dark_mode": "Modo oscuro",
        "settings.dark_mode_description": "Activar modo oscuro",
        "settings.locale": "Local",
        "settings.locale_title": "Local",
        "settings.locale_description": "Cambiar el idioma",
        "searchbar.hint": "Buscar aplicaciones",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleFiFI extends _$LocaleBase {
  @override
  String get locale => "fi-FI";

  @override
  Map<String, String> get data => {
        "category.all": "Kaikki",
        "category.design": "Ulkoasu",
        "category.games": "Pelit",
        "category.entertainment": "Viihde",
        "category.development": "Kehitys",
        "category.music": "Musiikki",
        "category.productivity": "Tuottavuus",
        "category.tools": "Työkalut",
        "category.finance": "Rahoitus",
        "category.health_and_well_being": "Terveys ja hyvinvointi",
        "category.education": "Koulutus",
        "category.fitness": "Kuntosali",
        "category.communication": "Viestintä",
        "category.business": "Liiketoiminta",
        "topic.show_all": "Näytä kaikki kategoriat",
        "topic.trending": "Nousussa",
        "topic.trending_hint": "Näytä kaikki trendikäs sovellukset",
        "topic.featured": "Suositellut",
        "topic.featured_hint": "Näytä kaikki nostetut sovellukset",
        "topic.newTopic": "Uusi",
        "topic.new_hint": "Näytä kaikki äskettäin lisätyt sovellukset",
        "app_page.name": "Sovellus",
        "app_page.short_description": "Kuvaus",
        "app_page.category": "Kategoria",
        "app_page.download": "Lataa",
        "app_page.download_dialog_title": "Oletko varma, että haluat asentaa?",
        "app_page.download_dialog_description":
            "Jos olet varma, että haluat asentaa tämän sovelluksen painamalla Kyllä, muuten paina nro.",
        "app_page.download_dialog_confirm_installation": "Kyllä",
        "app_page.download_dialog_cancel_installation": "Ei",
        "app_page.donate": "Lahjoita",
        "app_page.donate_dialog_title": "Lahjoita sovelluksen kehittäjälle",
        "app_page.donate_dialog_description":
            "Jos haluat tukea sovelluksen kehittämistä, klikkaa alla olevia lahjoituksen linkkejä.",
        "app_page.donate_dialog_close": "Sulje",
        "app_page.information_developer_hint": "Kehittäjä",
        "app_page.information_technology_hint": "Teknologia",
        "app_page.information_trending_hint": "Nousu sijainti",
        "app_page.information_locale": "Englanti",
        "app_page.information_locale_hint": "Lokaatio",
        "app_page.information_size_hint": "Koko",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Lähde",
        "app_page.information_age_appropriatness_hint":
            "Ikä tarkoituksenmukaisuus",
        "app_page.long_description_title": "Kuvaus",
        "app_page.long_description_content": "Lisää sovelluksen kuvaus tähän.",
        "app_page.images": "Kuvat",
        "app_page.reviews": "Arvostelut",
        "app_page.similar_applications": "Vastaavat sovellukset",
        "settings.theme_mode": "Teeman tila",
        "settings.dark_mode": "Tumma tila",
        "settings.dark_mode_description": "Ota tumma tila käyttöön",
        "settings.locale": "Lokaatio",
        "settings.locale_title": "Lokaatio",
        "settings.locale_description": "Muuta lokaatiota",
        "searchbar.hint": "Hae sovelluksia",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleFrFR extends _$LocaleBase {
  @override
  String get locale => "fr-FR";

  @override
  Map<String, String> get data => {
        "category.all": "Tous",
        "category.design": "Conception",
        "category.games": "Jeu",
        "category.entertainment": "Divertissement",
        "category.development": "Développement",
        "category.music": "Musique",
        "category.productivity": "Productivité",
        "category.tools": "Outils",
        "category.finance": "Financement",
        "category.health_and_well_being": "Santé et bien-être",
        "category.education": "Éducation",
        "category.fitness": "Entraînement physique",
        "category.communication": "Communication",
        "category.business": "Entreprise",
        "topic.show_all": "Afficher toutes les catégories",
        "topic.trending": "Tendance",
        "topic.trending_hint": "Afficher toutes les applications tendances",
        "topic.featured": "En vedette",
        "topic.featured_hint": "Afficher toutes les applications en vedette",
        "topic.newTopic": "Nouveau",
        "topic.new_hint": "Afficher toutes les applications récemment ajoutées",
        "app_page.name": "Application",
        "app_page.short_description": "Libellé",
        "app_page.category": "Catégorie",
        "app_page.download": "Télécharger",
        "app_page.download_dialog_title":
            "Êtes-vous sûr de vouloir installer ?",
        "app_page.download_dialog_description":
            "Si vous êtes sûr de vouloir installer cette application, appuyez sur Oui, sinon appuyez sur Non.",
        "app_page.download_dialog_confirm_installation": "Oui",
        "app_page.download_dialog_cancel_installation": "Non",
        "app_page.donate": "Faire un don",
        "app_page.donate_dialog_title":
            "Faire un don au développeur de l'application",
        "app_page.donate_dialog_description":
            "Si vous souhaitez soutenir le développement de la demande, veuillez cliquer sur les liens de don ci-dessous.",
        "app_page.donate_dialog_close": "Fermer",
        "app_page.information_developer_hint": "Développeur",
        "app_page.information_technology_hint": "Technologie",
        "app_page.information_trending_hint": "Position de tendance",
        "app_page.information_locale": "Anglais",
        "app_page.information_locale_hint": "Locale",
        "app_page.information_size_hint": "Taille",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Source",
        "app_page.information_age_appropriatness_hint": "Adaptation de l'âge",
        "app_page.long_description_title": "Libellé",
        "app_page.long_description_content":
            "Insérer la description de l'application ici.",
        "app_page.images": "Images",
        "app_page.reviews": "Revues",
        "app_page.similar_applications": "Applications similaires",
        "settings.theme_mode": "Mode thème",
        "settings.dark_mode": "Mode sombre",
        "settings.dark_mode_description": "Activer le mode sombre",
        "settings.locale": "Locale",
        "settings.locale_title": "Locale",
        "settings.locale_description": "Changer la locale",
        "searchbar.hint": "Rechercher des applications",
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

class _$LocaleItIT extends _$LocaleBase {
  @override
  String get locale => "it-IT";

  @override
  Map<String, String> get data => {
        "category.all": "Tutti",
        "category.design": "Design",
        "category.games": "Giochi",
        "category.entertainment": "Intrattenimento",
        "category.development": "Sviluppo",
        "category.music": "Musica",
        "category.productivity": "Produttività",
        "category.tools": "Strumenti",
        "category.finance": "Finanza",
        "category.health_and_well_being": "Salute e benessere",
        "category.education": "Istruzione",
        "category.fitness": "Fitness",
        "category.communication": "Comunicazione",
        "category.business": "Business",
        "topic.show_all": "Mostra tutte le categorie",
        "topic.trending": "Tendenze",
        "topic.trending_hint": "Mostra tutte le applicazioni di tendenza",
        "topic.featured": "Vetrina",
        "topic.featured_hint": "Mostra tutte le applicazioni in evidenza",
        "topic.newTopic": "Nuovo",
        "topic.new_hint": "Mostra tutte le applicazioni aggiunte di recente",
        "app_page.name": "Applicazione",
        "app_page.short_description": "Descrizione",
        "app_page.category": "Categoria",
        "app_page.download": "Scarica",
        "app_page.download_dialog_title": "Sei sicuro di voler installare?",
        "app_page.download_dialog_description":
            "Se sei sicuro di voler installare questa applicazione, premi Sì, altrimenti premi No.",
        "app_page.download_dialog_confirm_installation": "Sì",
        "app_page.download_dialog_cancel_installation": "No",
        "app_page.donate": "Dona",
        "app_page.donate_dialog_title":
            "Dona allo sviluppatore dell'applicazione",
        "app_page.donate_dialog_description":
            "Se desideri supportare lo sviluppo dell'applicazione, clicca sui link di donazione qui sotto.",
        "app_page.donate_dialog_close": "Chiudi",
        "app_page.information_developer_hint": "Sviluppatore",
        "app_page.information_technology_hint": "Tecnologia",
        "app_page.information_trending_hint": "Posizione di tendenza",
        "app_page.information_locale": "Inglese",
        "app_page.information_locale_hint": "Localizzazione",
        "app_page.information_size_hint": "Dimensione",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Fonte",
        "app_page.information_age_appropriatness_hint": "Adeguatezza all'età",
        "app_page.long_description_title": "Descrizione",
        "app_page.long_description_content":
            "Inserisci qui la descrizione dell'applicazione.",
        "app_page.images": "Immagini",
        "app_page.reviews": "Recensioni",
        "app_page.similar_applications": "Applicazioni simili",
        "settings.theme_mode": "Modalità tema",
        "settings.dark_mode": "Modalità scura",
        "settings.dark_mode_description": "Attiva la modalità scura",
        "settings.locale": "Localizzazione",
        "settings.locale_title": "Localizzazione",
        "settings.locale_description": "Cambia la localizzazione",
        "searchbar.hint": "Cerca applicazioni",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleJaJP extends _$LocaleBase {
  @override
  String get locale => "ja-JP";

  @override
  Map<String, String> get data => {
        "category.all": "すべて",
        "category.design": "デザイン",
        "category.games": "ゲーム",
        "category.entertainment": "エンターテイメント",
        "category.development": "開発",
        "category.music": "音楽",
        "category.productivity": "Productivity",
        "category.tools": "ツール",
        "category.finance": "ファイナンス",
        "category.health_and_well_being": "健康と健康",
        "category.education": "教育",
        "category.fitness": "フィットネス",
        "category.communication": "コミュニケーション",
        "category.business": "ビジネス",
        "topic.show_all": "すべてのカテゴリを表示",
        "topic.trending": "トレンド",
        "topic.trending_hint": "すべてのトレンドアプリケーションを表示",
        "topic.featured": "注目の商品",
        "topic.featured_hint": "すべての注目アプリケーションを表示",
        "topic.newTopic": "新規作成",
        "topic.new_hint": "最近追加されたすべてのアプリケーションを表示",
        "app_page.name": "アプリケーション",
        "app_page.short_description": "説明",
        "app_page.category": "カテゴリ",
        "app_page.download": "ダウンロード",
        "app_page.download_dialog_title": "インストールしてもよろしいですか？",
        "app_page.download_dialog_description":
            "このアプリケーションをインストールしたい場合は「はい」を押してください。それ以外の場合は「いいえ」を押してください。",
        "app_page.download_dialog_confirm_installation": "はい",
        "app_page.download_dialog_cancel_installation": "いいえ",
        "app_page.donate": "寄付",
        "app_page.donate_dialog_title": "アプリ開発者に寄付",
        "app_page.donate_dialog_description":
            "アプリケーションの開発をサポートしたい場合は、以下の寄付リンクをクリックしてください。",
        "app_page.donate_dialog_close": "閉じる",
        "app_page.information_developer_hint": "開発者",
        "app_page.information_technology_hint": "テクノロジー",
        "app_page.information_trending_hint": "トレンドの位置",
        "app_page.information_locale": "日本語",
        "app_page.information_locale_hint": "ロケール",
        "app_page.information_size_hint": "サイズ",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "ソース",
        "app_page.information_age_appropriatness_hint": "年齢の<unk>",
        "app_page.long_description_title": "説明",
        "app_page.long_description_content": "ここにアプリケーションの説明を挿入します。",
        "app_page.images": "画像",
        "app_page.reviews": "レビュー",
        "app_page.similar_applications": "類似のアプリケーション",
        "settings.theme_mode": "テーマモード",
        "settings.dark_mode": "ダークモード",
        "settings.dark_mode_description": "ダークモードを有効にする",
        "settings.locale": "ロケール",
        "settings.locale_title": "ロケール",
        "settings.locale_description": "ロケールの変更",
        "searchbar.hint": "アプリケーションを検索",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleNlBE extends _$LocaleBase {
  @override
  String get locale => "nl-BE";

  @override
  Map<String, String> get data => {
        "category.all": "Allemaal",
        "category.design": "Ontwerp",
        "category.games": "Spellen",
        "category.entertainment": "Vermaak",
        "category.development": "Ontwikkeling",
        "category.music": "Muziek",
        "category.productivity": "Productiviteit",
        "category.tools": "Hulpmiddelen",
        "category.finance": "Financiële",
        "category.health_and_well_being": "Gezondheid en welzijn",
        "category.education": "Opleiding",
        "category.fitness": "Fitness",
        "category.communication": "Communicatie",
        "category.business": "Bedrijfsleven",
        "topic.show_all": "Toon alle categorieën",
        "topic.trending": "Populair",
        "topic.trending_hint": "Toon alle populaire toepassingen",
        "topic.featured": "Aanbevolen",
        "topic.featured_hint": "Toon alle aanbevolen toepassingen",
        "topic.newTopic": "Nieuw",
        "topic.new_hint": "Alle recent toegevoegde toepassingen tonen",
        "app_page.name": "Applicatie",
        "app_page.short_description": "Beschrijving",
        "app_page.category": "categorie",
        "app_page.download": "downloaden",
        "app_page.download_dialog_title":
            "Weet u zeker dat u wilt installeren?",
        "app_page.download_dialog_description":
            "Als je zeker weet dat je deze applicatie wilt installeren, druk dan op Ja. Druk anders op Nee.",
        "app_page.download_dialog_confirm_installation": "ja",
        "app_page.download_dialog_cancel_installation": "Neen",
        "app_page.donate": "Doneren",
        "app_page.donate_dialog_title":
            "Doneer aan de ontwikkelaar van de applicatie",
        "app_page.donate_dialog_description":
            "Als u de ontwikkeling van de applicatie wilt ondersteunen, klik dan op de donatie links hieronder.",
        "app_page.donate_dialog_close": "Afsluiten",
        "app_page.information_developer_hint": "Ontwikkelaar",
        "app_page.information_technology_hint": "Technologie",
        "app_page.information_trending_hint": "Populaire positie",
        "app_page.information_locale": "Nederlands",
        "app_page.information_locale_hint": "Lokalisatie",
        "app_page.information_size_hint": "Grootte",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Bron",
        "app_page.information_age_appropriatness_hint": "Verbruiksleeftijd",
        "app_page.long_description_title": "Beschrijving",
        "app_page.long_description_content":
            "Voeg hier de toepassingsbeschrijving in.",
        "app_page.images": "Afbeeldingen",
        "app_page.reviews": "Beoordelingen",
        "app_page.similar_applications": "Vergelijkbare toepassingen",
        "settings.theme_mode": "Thema modus",
        "settings.dark_mode": "Donkere modus",
        "settings.dark_mode_description": "Donkere modus inschakelen",
        "settings.locale": "Lokalisatie",
        "settings.locale_title": "Lokalisatie",
        "settings.locale_description": "Verander de landinstelling",
        "searchbar.hint": "Apps doorzoeken",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleNlNL extends _$LocaleBase {
  @override
  String get locale => "nl-NL";

  @override
  Map<String, String> get data => {
        "category.all": "Allemaal",
        "category.design": "Ontwerp",
        "category.games": "Spellen",
        "category.entertainment": "Vermaak",
        "category.development": "Ontwikkeling",
        "category.music": "Muziek",
        "category.productivity": "Productiviteit",
        "category.tools": "Hulpmiddelen",
        "category.finance": "Financiële",
        "category.health_and_well_being": "Gezondheid en welzijn",
        "category.education": "Opleiding",
        "category.fitness": "Fitness",
        "category.communication": "Communicatie",
        "category.business": "Bedrijfsleven",
        "topic.show_all": "Toon alle categorieën",
        "topic.trending": "Populair",
        "topic.trending_hint": "Toon alle populaire toepassingen",
        "topic.featured": "Aanbevolen",
        "topic.featured_hint": "Toon alle aanbevolen toepassingen",
        "topic.newTopic": "Nieuw",
        "topic.new_hint": "Alle recent toegevoegde toepassingen tonen",
        "app_page.name": "Applicatie",
        "app_page.short_description": "Beschrijving",
        "app_page.category": "categorie",
        "app_page.download": "downloaden",
        "app_page.download_dialog_title":
            "Weet u zeker dat u wilt installeren?",
        "app_page.download_dialog_description":
            "Als je zeker weet dat je deze applicatie wilt installeren, druk dan op Ja. Druk anders op Nee.",
        "app_page.download_dialog_confirm_installation": "ja",
        "app_page.download_dialog_cancel_installation": "Neen",
        "app_page.donate": "Doneren",
        "app_page.donate_dialog_title":
            "Doneer aan de ontwikkelaar van de applicatie",
        "app_page.donate_dialog_description":
            "Als u de ontwikkeling van de applicatie wilt ondersteunen, klik dan op de donatie links hieronder.",
        "app_page.donate_dialog_close": "Afsluiten",
        "app_page.information_developer_hint": "Ontwikkelaar",
        "app_page.information_technology_hint": "Technologie",
        "app_page.information_trending_hint": "Populaire positie",
        "app_page.information_locale": "Nederlands",
        "app_page.information_locale_hint": "Lokalisatie",
        "app_page.information_size_hint": "Grootte",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Bron",
        "app_page.information_age_appropriatness_hint": "Verbruiksleeftijd",
        "app_page.long_description_title": "Beschrijving",
        "app_page.long_description_content":
            "Voeg hier de toepassingsbeschrijving in.",
        "app_page.images": "Afbeeldingen",
        "app_page.reviews": "Beoordelingen",
        "app_page.similar_applications": "Vergelijkbare toepassingen",
        "settings.theme_mode": "Thema modus",
        "settings.dark_mode": "Donkere modus",
        "settings.dark_mode_description": "Donkere modus inschakelen",
        "settings.locale": "Lokalisatie",
        "settings.locale_title": "Lokalisatie",
        "settings.locale_description": "Verander de landinstelling",
        "searchbar.hint": "Apps doorzoeken",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleNoNO extends _$LocaleBase {
  @override
  String get locale => "no-NO";

  @override
  Map<String, String> get data => {
        "category.all": "Alle",
        "category.design": "Utforming",
        "category.games": "Spill",
        "category.entertainment": "Underholdning",
        "category.development": "Utvikling",
        "category.music": "Musikk",
        "category.productivity": "Produktivitet",
        "category.tools": "Verktøy",
        "category.finance": "Finans",
        "category.health_and_well_being": "Helse og trivsel",
        "category.education": "Utdanning",
        "category.fitness": "fitness",
        "category.communication": "Kommunikasjon",
        "category.business": "Forretninger",
        "topic.show_all": "Vis alle kategorier",
        "topic.trending": "Populært",
        "topic.trending_hint": "Vis alle populære programmer",
        "topic.featured": "Anbefalt",
        "topic.featured_hint": "Vis alle utvalgte applikasjoner",
        "topic.newTopic": "Ny",
        "topic.new_hint": "Vis alle nylig lagt til applikasjoner",
        "app_page.name": "Applikasjon",
        "app_page.short_description": "Beskrivelse",
        "app_page.category": "Kategori",
        "app_page.download": "Nedlasting",
        "app_page.download_dialog_title":
            "Er du sikker på at du vil installere?",
        "app_page.download_dialog_description":
            "Hvis du er sikker på at du ønsker å installere denne applikasjonen pressen Ja, ellers trykk nei.",
        "app_page.download_dialog_confirm_installation": "Ja",
        "app_page.download_dialog_cancel_installation": "Nei",
        "app_page.donate": "Doner",
        "app_page.donate_dialog_title": "Doner til applikasjonsutvikler",
        "app_page.donate_dialog_description":
            "Hvis du ønsker å støtte utviklingen av programmet, vennligst klikk på donasjonslenkene under.",
        "app_page.donate_dialog_close": "Lukk",
        "app_page.information_developer_hint": "Utvikler",
        "app_page.information_technology_hint": "Teknologi",
        "app_page.information_trending_hint": "Trendende posisjon",
        "app_page.information_locale": "Engelsk",
        "app_page.information_locale_hint": "Språk",
        "app_page.information_size_hint": "Størrelse",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Kilde",
        "app_page.information_age_appropriatness_hint": "Alder hensiktsmessig",
        "app_page.long_description_title": "Beskrivelse",
        "app_page.long_description_content":
            "Sett inn applikasjonsbeskrivelse her.",
        "app_page.images": "Bilder",
        "app_page.reviews": "Anmeldelser",
        "app_page.similar_applications": "Lignende søknader",
        "settings.theme_mode": "Tema modus",
        "settings.dark_mode": "Mørkt modus",
        "settings.dark_mode_description": "Slå på mørk modus",
        "settings.locale": "Språk",
        "settings.locale_title": "Språk",
        "settings.locale_description": "Endre nasjonale innstillinger",
        "searchbar.hint": "Søk etter applikasjoner",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocalePlPL extends _$LocaleBase {
  @override
  String get locale => "pl-PL";

  @override
  Map<String, String> get data => {
        "category.all": "Wszystkie",
        "category.design": "Projekt",
        "category.games": "Gry",
        "category.entertainment": "Rozrywka",
        "category.development": "Rozwój",
        "category.music": "Muzyka",
        "category.productivity": "Wydajność",
        "category.tools": "Narzędzia",
        "category.finance": "Środki finansowe",
        "category.health_and_well_being": "Zdrowie i dobrostan",
        "category.education": "Edukacja",
        "category.fitness": "Fitness",
        "category.communication": "Komunikacja",
        "category.business": "Biznes",
        "topic.show_all": "Pokaż wszystkie kategorie",
        "topic.trending": "Popularne",
        "topic.trending_hint": "Pokaż wszystkie popularne aplikacje",
        "topic.featured": "Polecane",
        "topic.featured_hint": "Pokaż wszystkie polecane aplikacje",
        "topic.newTopic": "Nowy",
        "topic.new_hint": "Pokaż wszystkie ostatnio dodane aplikacje",
        "app_page.name": "Aplikacja",
        "app_page.short_description": "Opis",
        "app_page.category": "Kategoria",
        "app_page.download": "Pobierz",
        "app_page.download_dialog_title": "Czy na pewno chcesz zainstalować?",
        "app_page.download_dialog_description":
            "Jeśli jesteś pewien, że chcesz zainstalować tę aplikację, naciśnij Tak, w przeciwnym razie naciśnij nr",
        "app_page.download_dialog_confirm_installation": "Tak",
        "app_page.download_dialog_cancel_installation": "Nie",
        "app_page.donate": "Wesprzyj",
        "app_page.donate_dialog_title": "Wspomóż programistę aplikacji",
        "app_page.donate_dialog_description":
            "Jeśli chcesz wesprzeć rozwój aplikacji, kliknij poniższy link do darowizny.",
        "app_page.donate_dialog_close": "Zamknij",
        "app_page.information_developer_hint": "Programista",
        "app_page.information_technology_hint": "Technologia",
        "app_page.information_trending_hint": "Popularna pozycja",
        "app_page.information_locale": "Angielski",
        "app_page.information_locale_hint": "Język",
        "app_page.information_size_hint": "Rozmiar",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Źródło",
        "app_page.information_age_appropriatness_hint": "Odpowiedniość wieku",
        "app_page.long_description_title": "Opis",
        "app_page.long_description_content": "Wstaw tutaj opis aplikacji.",
        "app_page.images": "Obrazy",
        "app_page.reviews": "Recenzje",
        "app_page.similar_applications": "Podobne aplikacje",
        "settings.theme_mode": "Tryb motywu",
        "settings.dark_mode": "Tryb ciemny",
        "settings.dark_mode_description": "Włącz tryb ciemny",
        "settings.locale": "Język",
        "settings.locale_title": "Język",
        "settings.locale_description": "Zmień ustawienia regionalne",
        "searchbar.hint": "Szukaj aplikacji",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocalePtBR extends _$LocaleBase {
  @override
  String get locale => "pt-BR";

  @override
  Map<String, String> get data => {
        "category.all": "Todos",
        "category.design": "Projetar",
        "category.games": "Partidas",
        "category.entertainment": "Entretenimento",
        "category.development": "Desenvolvimento",
        "category.music": "Música",
        "category.productivity": "Produtividade",
        "category.tools": "Ferramentas",
        "category.finance": "Finança",
        "category.health_and_well_being": "Saúde e bem-estar",
        "category.education": "Educação",
        "category.fitness": "Academia",
        "category.communication": "Comunicaçao",
        "category.business": "Empresas",
        "topic.show_all": "Mostrar todas as categorias",
        "topic.trending": "Tendências",
        "topic.trending_hint": "Mostrar todos os aplicativos em alta",
        "topic.featured": "Destaques",
        "topic.featured_hint": "Mostrar todas as aplicações em destaque",
        "topic.newTopic": "Novidades",
        "topic.new_hint":
            "Mostrar todas as aplicações adicionadas recentemente",
        "app_page.name": "Solicitação",
        "app_page.short_description": "Descrição:",
        "app_page.category": "categoria",
        "app_page.download": "BAIXAR",
        "app_page.download_dialog_title": "Tem certeza de que deseja instalar?",
        "app_page.download_dialog_description":
            "Se você tem certeza de que deseja instalar este aplicativo, pressione Sim, caso contrário, pressione Não.",
        "app_page.download_dialog_confirm_installation": "sim",
        "app_page.download_dialog_cancel_installation": "Não",
        "app_page.donate": "Doar",
        "app_page.donate_dialog_title":
            "Doar para o desenvolvedor do aplicativo",
        "app_page.donate_dialog_description":
            "Se você deseja apoiar o desenvolvimento do aplicativo, clique nos links de doação abaixo.",
        "app_page.donate_dialog_close": "FECHAR",
        "app_page.information_developer_hint": "Desenvolvedores",
        "app_page.information_technology_hint": "Tecnologia",
        "app_page.information_trending_hint": "Posição em alta",
        "app_page.information_locale": "Portuguese-Brazil",
        "app_page.information_locale_hint": "Localidade",
        "app_page.information_size_hint": "Tamanho",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "fonte",
        "app_page.information_age_appropriatness_hint": "Adequação de idade",
        "app_page.long_description_title": "Descrição:",
        "app_page.long_description_content":
            "Inserir descrição do aplicativo aqui.",
        "app_page.images": "Imagens",
        "app_page.reviews": "Avaliações",
        "app_page.similar_applications": "Aplicativos similares",
        "settings.theme_mode": "Modo tema",
        "settings.dark_mode": "Modo noturno",
        "settings.dark_mode_description": "Ativar o modo escuro",
        "settings.locale": "Localidade",
        "settings.locale_title": "Localidade",
        "settings.locale_description": "Alterar a localidade",
        "searchbar.hint": "Pesquisar aplicativos",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocalePtPT extends _$LocaleBase {
  @override
  String get locale => "pt-PT";

  @override
  Map<String, String> get data => {
        "category.all": "Todos",
        "category.design": "Projetar",
        "category.games": "Partidas",
        "category.entertainment": "Entretenimento",
        "category.development": "Desenvolvimento",
        "category.music": "Música",
        "category.productivity": "Produtividade",
        "category.tools": "Ferramentas",
        "category.finance": "Finança",
        "category.health_and_well_being": "Saúde e bem-estar",
        "category.education": "Educação",
        "category.fitness": "Academia",
        "category.communication": "Comunicaçao",
        "category.business": "Empresas",
        "topic.show_all": "Mostrar todas as categorias",
        "topic.trending": "Tendências",
        "topic.trending_hint": "Mostrar todos os aplicativos em alta",
        "topic.featured": "Destaques",
        "topic.featured_hint": "Mostrar todas as aplicações em destaque",
        "topic.newTopic": "Novidades",
        "topic.new_hint":
            "Mostrar todas as aplicações adicionadas recentemente",
        "app_page.name": "Solicitação",
        "app_page.short_description": "Descrição:",
        "app_page.category": "categoria",
        "app_page.download": "BAIXAR",
        "app_page.download_dialog_title": "Tem certeza de que deseja instalar?",
        "app_page.download_dialog_description":
            "Se você tem certeza de que deseja instalar este aplicativo, pressione Sim, caso contrário, pressione Não.",
        "app_page.download_dialog_confirm_installation": "sim",
        "app_page.download_dialog_cancel_installation": "Não",
        "app_page.donate": "Doar",
        "app_page.donate_dialog_title":
            "Doar para o desenvolvedor do aplicativo",
        "app_page.donate_dialog_description":
            "Se você deseja apoiar o desenvolvimento do aplicativo, clique nos links de doação abaixo.",
        "app_page.donate_dialog_close": "FECHAR",
        "app_page.information_developer_hint": "Desenvolvedores",
        "app_page.information_technology_hint": "Tecnologia",
        "app_page.information_trending_hint": "Posição em alta",
        "app_page.information_locale": "Portuguese-Brazil",
        "app_page.information_locale_hint": "Localidade",
        "app_page.information_size_hint": "Tamanho",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "fonte",
        "app_page.information_age_appropriatness_hint": "Adequação de idade",
        "app_page.long_description_title": "Descrição:",
        "app_page.long_description_content":
            "Inserir descrição do aplicativo aqui.",
        "app_page.images": "Imagens",
        "app_page.reviews": "Avaliações",
        "app_page.similar_applications": "Aplicativos similares",
        "settings.theme_mode": "Modo tema",
        "settings.dark_mode": "Modo noturno",
        "settings.dark_mode_description": "Ativar o modo escuro",
        "settings.locale": "Localidade",
        "settings.locale_title": "Localidade",
        "settings.locale_description": "Alterar a localidade",
        "searchbar.hint": "Pesquisar aplicativos",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleRoRO extends _$LocaleBase {
  @override
  String get locale => "ro-RO";

  @override
  Map<String, String> get data => {
        "category.all": "Toate",
        "category.design": "Proiectare",
        "category.games": "Jocuri",
        "category.entertainment": "Divertisment",
        "category.development": "Dezvoltare",
        "category.music": "Muzică",
        "category.productivity": "Productivitate",
        "category.tools": "Unelte",
        "category.finance": "Finanțe",
        "category.health_and_well_being": "Sănătate şi bunăstare",
        "category.education": "Educaţia",
        "category.fitness": "Fitm",
        "category.communication": "Comunicare",
        "category.business": "Afaceri",
        "topic.show_all": "Arată toate categoriile",
        "topic.trending": "Populare",
        "topic.trending_hint": "Arată toate aplicațiile în curs",
        "topic.featured": "Recomandate",
        "topic.featured_hint": "Arată toate aplicațiile recomandate",
        "topic.newTopic": "Nou",
        "topic.new_hint": "Arată toate aplicațiile adăugate recent",
        "app_page.name": "Cerere",
        "app_page.short_description": "Descriere",
        "app_page.category": "Categorie",
        "app_page.download": "Descărcare",
        "app_page.download_dialog_title":
            "Sunteţi sigur că doriţi să instalaţi?",
        "app_page.download_dialog_description":
            "Dacă sunteți sigur că doriți să instalați această aplicație, apăsați Da, altfel apăsați Nu.",
        "app_page.download_dialog_confirm_installation": "Da",
        "app_page.download_dialog_cancel_installation": "Nr",
        "app_page.donate": "Donează",
        "app_page.donate_dialog_title":
            "Donează către dezvoltatorul aplicației",
        "app_page.donate_dialog_description":
            "Dacă doriți să susțineți dezvoltarea aplicației, vă rugăm să faceți clic pe linkurile de donație de mai jos.",
        "app_page.donate_dialog_close": "Inchide",
        "app_page.information_developer_hint": "Dezvoltator",
        "app_page.information_technology_hint": "Tehnologie",
        "app_page.information_trending_hint": "Poziție populară",
        "app_page.information_locale": "Română",
        "app_page.information_locale_hint": "Localizare",
        "app_page.information_size_hint": "Dimensiune",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Sursa",
        "app_page.information_age_appropriatness_hint": "Adecvarea vârstei",
        "app_page.long_description_title": "Descriere",
        "app_page.long_description_content":
            "Introduceți descrierea aplicației aici.",
        "app_page.images": "Imagini",
        "app_page.reviews": "Recenzii",
        "app_page.similar_applications": "Aplicații similare",
        "settings.theme_mode": "Mod temă",
        "settings.dark_mode": "Mod întunecat",
        "settings.dark_mode_description": "Activați modul întunecat",
        "settings.locale": "Localizare",
        "settings.locale_title": "Localizare",
        "settings.locale_description": "Schimbă localizarea",
        "searchbar.hint": "Căutare aplicații",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleRuRU extends _$LocaleBase {
  @override
  String get locale => "ru-RU";

  @override
  Map<String, String> get data => {
        "category.all": "Все",
        "category.design": "Дизайн",
        "category.games": "Игры",
        "category.entertainment": "Развлечения",
        "category.development": "Развитие",
        "category.music": "Музыка",
        "category.productivity": "Производительность",
        "category.tools": "Инструменты",
        "category.finance": "Финансы",
        "category.health_and_well_being": "Здравоохранение и благосостояние",
        "category.education": "Образование",
        "category.fitness": "Фитнес",
        "category.communication": "Связь",
        "category.business": "Бизнес",
        "topic.show_all": "Показать все категории",
        "topic.trending": "Популярные",
        "topic.trending_hint": "Показать все популярные приложения",
        "topic.featured": "Избранные",
        "topic.featured_hint": "Показать все избранные приложения",
        "topic.newTopic": "Новый",
        "topic.new_hint": "Показать все недавно добавленные приложения",
        "app_page.name": "Приложение",
        "app_page.short_description": "Описание",
        "app_page.category": "Категория",
        "app_page.download": "Скачать",
        "app_page.download_dialog_title": "Вы уверены, что хотите установить?",
        "app_page.download_dialog_description":
            "Если вы уверены, что хотите установить это приложение, нажмите Да, иначе нажмите Нет.",
        "app_page.download_dialog_confirm_installation": "Да",
        "app_page.download_dialog_cancel_installation": "Нет",
        "app_page.donate": "Пожертвовать",
        "app_page.donate_dialog_title": "Пожертвовать разработчику приложения",
        "app_page.donate_dialog_description":
            "Если вы хотите поддержать разработку приложения, нажмите на ссылки пожертвования ниже.",
        "app_page.donate_dialog_close": "Закрыть",
        "app_page.information_developer_hint": "Разработчик",
        "app_page.information_technology_hint": "Технология",
        "app_page.information_trending_hint": "Популярная позиция",
        "app_page.information_locale": "Russian",
        "app_page.information_locale_hint": "Язык",
        "app_page.information_size_hint": "Размер",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Источник",
        "app_page.information_age_appropriatness_hint": "Возраст владения",
        "app_page.long_description_title": "Описание",
        "app_page.long_description_content": "Вставьте описание приложения.",
        "app_page.images": "Изображения",
        "app_page.reviews": "Отзывы",
        "app_page.similar_applications": "Похожие приложения",
        "settings.theme_mode": "Режим темы",
        "settings.dark_mode": "Темный режим",
        "settings.dark_mode_description": "Включить темный режим",
        "settings.locale": "Язык",
        "settings.locale_title": "Язык",
        "settings.locale_description": "Изменить язык",
        "searchbar.hint": "Поиск приложений",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleSvSE extends _$LocaleBase {
  @override
  String get locale => "sv-SE";

  @override
  Map<String, String> get data => {
        "category.all": "Alla",
        "category.design": "Design",
        "category.games": "Spel",
        "category.entertainment": "Underhållning",
        "category.development": "Utveckling",
        "category.music": "Musik",
        "category.productivity": "Produktivitet",
        "category.tools": "Verktyg",
        "category.finance": "Finans",
        "category.health_and_well_being": "Hälsa och välbefinnande",
        "category.education": "Utbildning",
        "category.fitness": "Fitness",
        "category.communication": "Kommunikation",
        "category.business": "Företag",
        "topic.show_all": "Visa alla kategorier",
        "topic.trending": "Trendande",
        "topic.trending_hint": "Visa alla trendande program",
        "topic.featured": "Utvalda",
        "topic.featured_hint": "Visa alla utvalda program",
        "topic.newTopic": "Ny",
        "topic.new_hint": "Visa alla nyligen tillagda program",
        "app_page.name": "Applikation",
        "app_page.short_description": "Beskrivning",
        "app_page.category": "Kategori",
        "app_page.download": "Hämta",
        "app_page.download_dialog_title": "Är du säker du vill installera?",
        "app_page.download_dialog_description":
            "Om du är säker på att du vill installera detta program tryck Ja, annars tryck på Nej.",
        "app_page.download_dialog_confirm_installation": "Ja",
        "app_page.download_dialog_cancel_installation": "Nej",
        "app_page.donate": "Donera",
        "app_page.donate_dialog_title": "Donera till applikationsutvecklare",
        "app_page.donate_dialog_description":
            "Om du vill stödja utvecklingen av ansökan, klicka på donationslänkarna nedan.",
        "app_page.donate_dialog_close": "Stäng",
        "app_page.information_developer_hint": "Utvecklare",
        "app_page.information_technology_hint": "Teknik",
        "app_page.information_trending_hint": "Trendande position",
        "app_page.information_locale": "Engelska",
        "app_page.information_locale_hint": "Lokalt",
        "app_page.information_size_hint": "Storlek",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Källa",
        "app_page.information_age_appropriatness_hint": "Ålder lämplighet",
        "app_page.long_description_title": "Beskrivning",
        "app_page.long_description_content":
            "Infoga applikationsbeskrivning här.",
        "app_page.images": "Bilder",
        "app_page.reviews": "Recensioner",
        "app_page.similar_applications": "Liknande applikationer",
        "settings.theme_mode": "Tema läge",
        "settings.dark_mode": "Mörkt läge",
        "settings.dark_mode_description": "Slå på mörkt läge",
        "settings.locale": "Lokalt",
        "settings.locale_title": "Lokalt",
        "settings.locale_description": "Ändra språk",
        "searchbar.hint": "Sök applikationer",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleUkUA extends _$LocaleBase {
  @override
  String get locale => "uk-UA";

  @override
  Map<String, String> get data => {
        "category.all": "Всі",
        "category.design": "Дизайн",
        "category.games": "Ігри",
        "category.entertainment": "Розваги",
        "category.development": "Розробка",
        "category.music": "Музика",
        "category.productivity": "Продукти",
        "category.tools": "Інструменти",
        "category.finance": "Фінанси",
        "category.health_and_well_being": "Здоров'я і добробут",
        "category.education": "Освіта",
        "category.fitness": "Фітнес",
        "category.communication": "Комунікація",
        "category.business": "Бізнес",
        "topic.show_all": "Показати всі категорії",
        "topic.trending": "У тренді",
        "topic.trending_hint": "Показати всі актуальні програми",
        "topic.featured": "Рекомендовані",
        "topic.featured_hint": "Показати всі виділені програми",
        "topic.newTopic": "Новий",
        "topic.new_hint": "Показати всі нещодавно додані додатки",
        "app_page.name": "Програма",
        "app_page.short_description": "Опис",
        "app_page.category": "Категорія",
        "app_page.download": "Звантажити",
        "app_page.download_dialog_title": "Ви впевнені, що хочете встановити?",
        "app_page.download_dialog_description":
            "Якщо ви впевнені, що ви хочете встановити цю програму натисніть \"Так\", інакше натисніть кнопку \"Ні\".",
        "app_page.download_dialog_confirm_installation": "Так",
        "app_page.download_dialog_cancel_installation": "Ні",
        "app_page.donate": "Пожертвувати",
        "app_page.donate_dialog_title": "Пожертвувати розробнику програм",
        "app_page.donate_dialog_description":
            "Якщо ви хочете підтримати розробку програми, натисніть посилання \"пожертвування\" нижче.",
        "app_page.donate_dialog_close": "Закрити",
        "app_page.information_developer_hint": "Розробник",
        "app_page.information_technology_hint": "Технологія",
        "app_page.information_trending_hint": "Популярні позиції",
        "app_page.information_locale": "Українська",
        "app_page.information_locale_hint": "Локалізація",
        "app_page.information_size_hint": "Розмір",
        "app_page.information_source": "FOSS",
        "app_page.information_source_hint": "Джерело",
        "app_page.information_age_appropriatness_hint": "Вік достойності",
        "app_page.long_description_title": "Опис",
        "app_page.long_description_content": "Вставити опис додатку тут.",
        "app_page.images": "Малюнки",
        "app_page.reviews": "Відгуки",
        "app_page.similar_applications": "Схожі додатки",
        "settings.theme_mode": "Теми",
        "settings.dark_mode": "Темний режим",
        "settings.dark_mode_description": "Увімкнути темний режим",
        "settings.locale": "Локалізація",
        "settings.locale_title": "Локалізація",
        "settings.locale_description": "Змінити локаль",
        "searchbar.hint": "Пошук додатків",
      };

  @override
  int get translatedStrings => 54;
}

class _$LocaleZhCN extends _$LocaleBase {
  @override
  String get locale => "zh-CN";

  @override
  Map<String, String> get data => {
        "category.all": "所有的",
        "category.design": "设计",
        "category.games": "游戏",
        "category.entertainment": "娱乐活动",
        "category.development": "贸易和发展会议",
        "category.music": "音乐",
        "category.productivity": "生产率：",
        "category.tools": "工具",
        "category.finance": "A. 财务",
        "category.health_and_well_being": "健康和福利",
        "category.education": "教育",
        "category.fitness": "健身力",
        "category.communication": "通讯",
        "category.business": "业务",
        "topic.show_all": "显示所有类别",
        "topic.trending": "热门主题",
        "topic.trending_hint": "显示所有热门应用程序",
        "topic.featured": "精选",
        "topic.featured_hint": "显示所有精选应用",
        "topic.newTopic": "新的",
        "topic.new_hint": "显示所有最近添加的应用程序",
        "app_page.name": "适用范围",
        "app_page.short_description": "描述",
        "app_page.category": "类别",
        "app_page.download": "下载",
        "app_page.download_dialog_title": "您确定要安装吗？",
        "app_page.download_dialog_description": "如果您确定要安装此应用程序，请按“是”，否则按“是”。",
        "app_page.download_dialog_confirm_installation": "否",
        "app_page.download_dialog_cancel_installation": "否",
        "app_page.donate": "捐助",
        "app_page.donate_dialog_title": "捐赠给应用程序开发者",
        "app_page.donate_dialog_description": "如果您希望支持应用程序的开发，请点击下面的捐赠链接。",
        "app_page.donate_dialog_close": "关闭",
        "app_page.information_developer_hint": "开发者",
        "app_page.information_technology_hint": "技术",
        "app_page.information_trending_hint": "热门位置",
        "app_page.information_locale": "Distr.",
        "app_page.information_locale_hint": "区域设置",
        "app_page.information_size_hint": "大小",
        "app_page.information_source": "自由和开放源码软件",
        "app_page.information_source_hint": "来源",
        "app_page.information_age_appropriatness_hint": "年龄的适当性",
        "app_page.long_description_title": "描述",
        "app_page.long_description_content": "在此插入应用程序描述。",
        "app_page.images": "图像",
        "app_page.reviews": "评论",
        "app_page.similar_applications": "类似的应用程序",
        "settings.theme_mode": "主题模式",
        "settings.dark_mode": "暗色模式",
        "settings.dark_mode_description": "打开暗色模式",
        "settings.locale": "区域设置",
        "settings.locale_title": "区域设置",
        "settings.locale_description": "更改区域设置",
        "searchbar.hint": "搜索应用程序",
      };

  @override
  int get translatedStrings => 54;
}
