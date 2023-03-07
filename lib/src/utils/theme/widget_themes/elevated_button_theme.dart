import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

/* -- Light and Dark ElevatedButton Themes -- */
class bpdElevatedButtonTheme {
  bpdElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: bpdWhiteColor,
      backgroundColor: bpdSecondaryColor,
      side: const BorderSide(color: bpdSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: bpdButtonHeight),
    ),
  );


  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: bpdSecondaryColor,
      backgroundColor: bpdWhiteColor,
      side: const BorderSide(color: bpdSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: bpdButtonHeight),
    ),
  );

}