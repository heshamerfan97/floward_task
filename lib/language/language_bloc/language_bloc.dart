import 'dart:ui';

import 'package:bloc/bloc.dart';
import "package:meta/meta.dart";
import 'package:floward_task/application/application.dart';
import 'package:floward_task/language/language.dart';
import 'package:floward_task/shared/services/preferences/preferences.dart';
import 'package:floward_task/shared/services/preferences/preferences_utils.dart';

part 'language_event.dart';

part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitial()) {
    on<LanguageEvent>((event, emit) async {
      if (event is OnChangeLanguage) {
        Application.isEnglish = event.locale.languageCode == 'en';
        if (event.locale == AppLanguage.defaultLanguage) {
          emit(LanguageUpdated());
        } else {
          emit(LanguageUpdating());
          AppLanguage.defaultLanguage = event.locale;

          ///Preference save
          await PreferencesUtils.setString(Preferences.language, event.locale.languageCode);
          emit(LanguageUpdated());
        }
      }
    });
  }
}
