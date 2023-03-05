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
      shape: RoundedRectangleBorder(),
      foregroundColor: bpdSecondaryColor,
      side: BorderSide(color: bpdSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: bpdButtonHeight),
    ),
  );


  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: bpdWhiteColor,
      side: BorderSide(color: bpdWhiteColor),
      padding: EdgeInsets.symmetric(vertical: bpdButtonHeight),
    ),
  );

}