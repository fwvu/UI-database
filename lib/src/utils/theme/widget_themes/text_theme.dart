import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidb/src/constants/colors.dart';

/* -- Light and Dark Text Themes -- */

class bpdTextTheme {
  bpdTextTheme._(); //To avoid creating instances

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: bpdDarkColor,),
    headlineMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: bpdDarkColor,),
    headlineSmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: bpdDarkColor,),
    displayLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: bpdDarkColor,),
    displaySmall: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: bpdDarkColor,),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: bpdDarkColor,),
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: bpdDarkColor,),

  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: bpdWhiteColor,),
    headlineMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: bpdWhiteColor,),
    headlineSmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: bpdWhiteColor,),
    displayLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: bpdWhiteColor,),
    displaySmall: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: bpdWhiteColor,),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: bpdWhiteColor,),
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: bpdWhiteColor,),
  );

}