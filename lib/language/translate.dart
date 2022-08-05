import 'package:floward_task/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:floward_task/language/app_locale_delegate.dart';
import 'package:floward_task/language/language_util.dart';

class Translate {
  final Locale locale;

  Translate(this.locale);

  static Translate? of(BuildContext context) {
    return Localizations.of<Translate>(context, Translate);
  }

  static const delegate = AppLocaleDelegate();

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    final jsonMap = await LanguageUtil.loadJson(
      "assets/locales/${locale.languageCode}.json",
    );

    _localizedStrings = jsonMap.map((key, value) {
      Logger.log(value, tag: key);
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}