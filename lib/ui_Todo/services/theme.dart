import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



  //Primary color
const  primaryColor = const Color(0xFF454571);
const  blackColor = Colors.black54;
   const Color cardBgLightColor = Color(0xFFFFFFFF);
   const Color backgroundColor2 = Color(0xFF17203A);
   const Color backgroundColorLight = Color(0xFFF2F6FF);
   const Color backgroundColorDark = Color(0xFF25254B);
   const greyb = Color(0xFF4A5367);
   const Color shadowColorDark = Colors.black;
   const Color darkHeaderColor = Color(0x8A919191);
const primaryColor2 = const Color(0xFF9F73AB);



TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Get.isDarkMode ? Colors.grey[400] : Colors.grey,
  ));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Get.isDarkMode ? Colors.white : Colors.black,
  ));
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Get.isDarkMode ? Colors.white : Colors.black,
  ));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
  ));
}
