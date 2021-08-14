import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.cyan,
      appBarTheme: AppBarTheme(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: Theme.of(context).textTheme);

  static ThemeData DarkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
