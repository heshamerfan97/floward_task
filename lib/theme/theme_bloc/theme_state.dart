part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ThemeUpdating extends ThemeState {}

class ThemeUpdated extends ThemeState {}