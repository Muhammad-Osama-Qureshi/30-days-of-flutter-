import 'package:day6/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:day6/pages/login_page.dart';
import 'package:day6/utils/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp()); //App Will Start From here
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  /*    while(ture){
      if(false)
      }*/
      themeMode: ThemeMode.light, //Theme Settings From Here
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(), //This will lead to The Home Page
        MyRoutes.loginRoute: (context) => LoginPage() //This will lead to The Login Page
      },
    );
  }
}
