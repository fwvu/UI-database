import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class bpdTextFormFieldTheme {
  bpdTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          prefixIconColor: bpdSecondaryColor,
          floatingLabelStyle: const TextStyle(color: bpdSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(width: 2.0, color: bpdSecondaryColor),
          ));

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
