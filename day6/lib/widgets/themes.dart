import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.cyan,
      appBarTheme: AppBarTheme(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.black),
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: Theme.of(context).textTheme);

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  //color
  //
  static Color creamColor = Color(0xfff5f5f5);
   static Color bluishColor = Color(0xff403b58);
}
