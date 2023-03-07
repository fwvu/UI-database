import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class bpdTextFormFieldTheme {
  bpdTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: bpdSecondaryColor,
          floatingLabelStyle: TextStyle(color: bpdSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: bpdSecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: bpdPrimaryColor,
          floatingLabelStyle: TextStyle(color: bpdPrimaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: bpdPrimaryColor),
          ));
}
