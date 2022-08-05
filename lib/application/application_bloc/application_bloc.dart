import 'dart:io';

import 'package:flutter/scheduler.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:floward_task/application/application.dart';
import 'package:floward_task/app_bloc.dart';
import 'package:floward_task/language/language_bloc/language_bloc.dart';
import 'package:floward_task/shared/services/preferences/preferences.dart';
import 'package:floward_task/shared/services/preferences/preferences_utils.dart';
import 'package:floward_task/theme/theme.dart';
import 'package:floward_task/theme/theme_bloc/theme_bloc.dart';
import 'package:floward_task/theme/theme_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'application_event.dart';

part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationInitial()){
   on<ApplicationEvent>((event, emit) async {
     if (event is OnSetupApplication) {
       ///Pending loading to UI
       emit(ApplicationWaiting());

       PreferencesUtils.preferences = await SharedPreferences.getInstance();

       ///Read/Save Device Info
       Application.deviceType = Platform.isAndroid
           ? 'android'
           : Platform.isIOS
           ? 'ios'
           : 'unknown';

       ///Get old Theme & Font & Language
       final oldLanguage = PreferencesUtils.getString(Preferences.language);
       final oldDarkOption = PreferencesUtils.getString(Preferences.darkOption);

       ThemeModel? theme;
       String? font;
       DarkOption? darkOption;

       ///Setup Language
       if (oldLanguage != null) {
         AppBloc.languageBloc.add(
           OnChangeLanguage(locale: Locale(oldLanguage)),
         );
       }

       ///Check phone dark option
       final brightness = SchedulerBinding.instance.window.platformBrightness;
       Application.deviceDarkTheme = brightness == Brightness.dark;

       ///check old dark option
       if (oldDarkOption != null) {
         switch (oldDarkOption) {
           case darkAlwaysOff:
             darkOption = DarkOption.alwaysOff;
             break;
           case darkAlwaysOn:
             darkOption = DarkOption.alwaysOn;
             break;
           default:
             darkOption = DarkOption.dynamic;
         }
       }

       ///Setup Theme & Font with dark Option
       AppBloc.themeBloc.add(
         OnChangeTheme(
           theme: theme ?? AppTheme.currentTheme,
           font: font ?? AppTheme.currentFont,
           darkOption: darkOption ?? AppTheme.darkThemeOption,
         ),
       );


       AppBloc.usersCubit.loadUsers();

       emit(ApplicationSetupCompleted());
     }

   });
  }

}
