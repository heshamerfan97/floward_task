import 'package:floward_task/language/language_bloc/language_bloc.dart';
import 'package:floward_task/modules/main/controllers/posts_controller.dart';
import 'package:floward_task/modules/main/controllers/users_controller.dart';
import 'package:floward_task/theme/theme_bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:floward_task/application/application_bloc/application_bloc.dart';
import 'package:floward_task/shared/controllers/error_cubit.dart';

class AppBloc {
  static final applicationBloc = ApplicationBloc();
  static final languageBloc = LanguageBloc();
  static final themeBloc = ThemeBloc();
  static final errorCubit = ErrorCubit();
  static final usersCubit = UsersCubit();
  static final postsCubit = PostsCubit();

  static final List<BlocProvider> providers = [
    BlocProvider<ApplicationBloc>(
      create: (context) => applicationBloc,
    ),
    BlocProvider<LanguageBloc>(
      create: (context) => languageBloc,
    ),
    BlocProvider<ThemeBloc>(
      create: (context) => themeBloc,
    ),
    BlocProvider<ErrorCubit>(
      create: (context) => errorCubit,
    ),
    BlocProvider<UsersCubit>(
      create: (context) => usersCubit,
    ),
    BlocProvider<PostsCubit>(
      create: (context) => postsCubit,
    ),
  ];

  static void dispose() {
    applicationBloc.close();
    languageBloc.close();
    themeBloc.close();
    errorCubit.close();
    usersCubit.close();
    postsCubit.close();
  }

  ///Singleton factory
  static final AppBloc _instance = AppBloc._internal();

  factory AppBloc() {
    return _instance;
  }

  AppBloc._internal();
}
