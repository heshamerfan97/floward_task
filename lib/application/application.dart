import 'package:floward_task/language/language.dart';

class Application {
  static bool debug = true;
  static String version = '1.0.0';
  static late String deviceType;

  static bool isEnglish = AppLanguage.defaultLanguage.languageCode == 'en';
  static bool deviceDarkTheme = false;

  ///Dark Mode: 0 => disabled, 1 => enabled, others, dynamic
  static bool darkTheme = false;


  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
