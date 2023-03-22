import 'package:flutter/material.dart';
import 'package:uidb/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:uidb/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:uidb/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:uidb/src/utils/theme/widget_themes/text_theme.dart';


/* -- Light and Dark Theme. ThemeData will switch based on phone setting -- */
class bpdAppTheme {

  // -- used to make themes private and unusable outside the app
  bpdAppTheme._();

  /* -- Light Theme -- */
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: bpdTextTheme.lightTextTheme,
    outlinedButtonTheme: bpdOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: bpdElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: bpdTextFormFieldTheme.lightInputDecorationTheme,
  );


  /* -- Dark Theme -- */
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: bpdTextTheme.darkTextTheme,
    outlinedButtonTheme: bpdOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: bpdElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: bpdTextFormFieldTheme.darkInputDecorationTheme,
  );
}