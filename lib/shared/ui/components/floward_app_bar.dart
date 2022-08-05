import 'package:floward_task/app_bloc.dart';
import 'package:floward_task/application/application.dart';
import 'package:floward_task/language/language_bloc/language_bloc.dart';
import 'package:floward_task/theme/theme.dart';
import 'package:floward_task/theme/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:floward_task/shared/services/sailor.dart';
import 'package:floward_task/shared/ui/helper/export.dart';

class FlowardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FlowardAppBar(this.title, {Key? key, this.hasBackButton = false}) : super(key: key);

  final bool hasBackButton;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: hasBackButton
          ? InkWell(
              onTap: () => Sailor.back(),
              child: const Icon(Icons.arrow_back, color: Palette.primaryBlue))
          : null,
      centerTitle: true,
      title: Text(title, style: TextStyles.appBarStyle),
      actions: [
        InkWell(
            onTap: () => AppBloc.languageBloc.add(OnChangeLanguage(
                locale: Application.isEnglish ? const Locale('ar') : const Locale('en'))),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: const Icon(
                Icons.language,
                color: Palette.primaryBlue,
              ),
            )),
        InkWell(
            onTap: () => AppBloc.themeBloc.add(OnChangeTheme(
                  theme: AppTheme.currentTheme,
                  font: AppTheme.currentFont,
                  darkOption: Application.darkTheme ? DarkOption.alwaysOff : DarkOption.alwaysOn,
                )),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Icon(
                Icons.lightbulb_outlined,
                color: Palette.primaryBlue,
              ),
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
