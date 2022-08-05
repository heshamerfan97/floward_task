import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:floward_task/application/application.dart';
import 'package:floward_task/theme/theme.dart';
import 'package:floward_task/theme/theme_collection.dart';
import 'package:floward_task/theme/theme_model.dart';
import 'package:floward_task/shared/services/preferences/preferences.dart';
import 'package:floward_task/shared/services/preferences/preferences_utils.dart';

part 'theme_event.dart';
part 'theme_state.dart';

const darkDynamic = 'dynamic';
const darkAlwaysOff = 'off';
const darkAlwaysOn = 'on';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()){
    on<ThemeEvent>((event, emit) async {
      if (event is OnChangeTheme) {
        emit(ThemeUpdating());

        AppTheme.currentTheme = event.theme ?? AppTheme.currentTheme;
        AppTheme.currentFont = event.font ?? AppTheme.currentFont;
        AppTheme.darkThemeOption = event.darkOption ?? AppTheme.darkThemeOption;

        ///Setup Theme with setting darkOption
        switch (AppTheme.darkThemeOption) {
          case DarkOption.dynamic:
            AppTheme.lightTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.lightTheme,
              font: AppTheme.currentFont,
            );
            AppTheme.darkTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.darkTheme,
              font: AppTheme.currentFont,
            );
            Application.darkTheme = Application.deviceDarkTheme;
            break;
          case DarkOption.alwaysOn:
            AppTheme.lightTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.darkTheme,
              font: AppTheme.currentFont,
            );
            AppTheme.darkTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.darkTheme,
              font: AppTheme.currentFont,
            );
            Application.darkTheme = true;
            break;
          case DarkOption.alwaysOff:
            AppTheme.lightTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.lightTheme,
              font: AppTheme.currentFont,
            );
            AppTheme.darkTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.lightTheme,
              font: AppTheme.currentFont,
            );
            Application.darkTheme = false;
            break;
          default:
            AppTheme.lightTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.lightTheme,
              font: AppTheme.currentFont,
            );
            AppTheme.darkTheme = ThemeCollection.getCollectionTheme(
              theme: AppTheme.currentTheme.darkTheme,
              font: AppTheme.currentFont,
            );
            Application.darkTheme = Application.deviceDarkTheme;
            break;
        }


        ///Preference save
        switch (AppTheme.darkThemeOption) {
          case DarkOption.dynamic:
            PreferencesUtils.setString(Preferences.darkOption, darkDynamic);
            break;
          case DarkOption.alwaysOn:
            PreferencesUtils.setString(Preferences.darkOption, darkAlwaysOn);
            break;
          case DarkOption.alwaysOff:
            PreferencesUtils.setString(Preferences.darkOption, darkAlwaysOff);
            break;
          default:
            break;
        }

        ///Notification UI
        emit(ThemeUpdated());
      }
    });
  }

}
