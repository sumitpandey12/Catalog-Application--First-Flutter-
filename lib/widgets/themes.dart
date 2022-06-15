import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primarySwatch: Colors.blue,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: Colors.black,
      buttonColor: darkBullishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      cardColor: Colors.black,
      accentColor: Colors.white,
      canvasColor: darkcreamColor,
      buttonColor: lightBullishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ));

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBullishColor = Color(0xff403b58);
  static Color lightBullishColor = Vx.indigo500;
}
