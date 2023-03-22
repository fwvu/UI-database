import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';


/* -- Light and Dark Outlined Button Themes -- */
class bpdOutlinedButtonTheme {
  bpdOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: bpdSecondaryColor,
      side: const BorderSide(color: bpdSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: bpdButtonHeight),
    ),
  );


  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: bpdWhiteColor,
      side: const BorderSide(color: bpdWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: bpdButtonHeight),
    ),
  );

}