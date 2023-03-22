import 'package:flutter/material.dart';
import '../../../constants/colors.dart';


/* -- Light and Dark Text Field Themes -- */
class bpdTextFormFieldTheme {
  bpdTextFormFieldTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          prefixIconColor: bpdSecondaryColor,
          floatingLabelStyle: const TextStyle(color: bpdSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(width: 2.0, color: bpdSecondaryColor),
          ));


  /* -- Dark Theme -- */
  static InputDecorationTheme darkInputDecorationTheme =
      InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          prefixIconColor: bpdPrimaryColor,
          floatingLabelStyle: const TextStyle(color: bpdPrimaryColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(width: 2.0, color: bpdPrimaryColor),
          ));
}
