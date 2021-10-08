//This Code Is for the Home Page of the Application

import 'package:day6/widgets/Drawer.dart'; //Importing Drawer Specification into the Application
import 'package:flutter/material.dart'; // Importing Material application specification into the Application

class HomePage extends StatelessWidget { //Code Goes Here
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer:MyDrawer() ,
    );
  }
}
