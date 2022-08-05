import 'package:flutter/material.dart';
import 'package:floward_task/shared/ui/helper/palette.dart';

//this class is to specify textStyles for the app
class TextStyles {

  ///Base => TextSize = 13
  static const baseWhiteText = TextStyle(
    color: Palette.white,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static const baseBlackText = TextStyle(
    color: Palette.black,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static const baseBlueText = TextStyle(
    color: Palette.primaryBlue,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static const baseSecondaryText = TextStyle(
    color: Palette.secondaryPink,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static const baseErrorText = TextStyle(
    color: Palette.red,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  ///Medium => TextSize = 18
  static const mediumWhiteText = TextStyle(
    color: Palette.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const mediumBlackText = TextStyle(
    color: Palette.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const mediumBlueText = TextStyle(
    color: Palette.primaryBlue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const mediumSecondaryText = TextStyle(
    color: Palette.secondaryPink,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );



  ///Small => TextSize = 12
  static const smallSecondaryText = TextStyle(
    color: Palette.secondaryPink,
    height: 1,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const smallBlackText = TextStyle(
    color: Palette.black,
    height: 1,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );


  ///Title => TextSize = 20 && weight = Bold
  static const titleStyle = TextStyle(
    color: Palette.primaryBlue,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const titleWhiteStyle = TextStyle(
    color: Palette.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const titleSecondaryStyle = TextStyle(
    color: Palette.secondaryPink,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );


  ///Headers => TextSize = 24 && weight = Bold
  static const headerWhiteStyle = TextStyle(
    color: Palette.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );



  ///ExtraLarge => TextSize = 25 && weight = ExtraBold
  static const extraLargeWhiteStyle = TextStyle(
    color: Palette.white,
    fontSize: 25,
    fontWeight: FontWeight.w800,
  );


  ///Others

  static const appBarStyle = TextStyle(
    color: Palette.primaryBlue,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );





}
