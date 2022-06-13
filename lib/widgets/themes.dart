import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primarySwatch: Colors.blue,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)));

  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  
  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBullishColor = Color(0xff403b58);

}
