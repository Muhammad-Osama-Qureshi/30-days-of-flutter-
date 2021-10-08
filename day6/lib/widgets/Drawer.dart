import 'package:flutter/cupertino.dart';
//This code will add a Drawer to your Mobile App
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.cyan,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Osama"),
              accountEmail: Text("mosamarafique@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('../assets/images/profile.jpg'), //The Imamges are saved in assets folder
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home), //Icon goes Here
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled), //Profile Icon Goes Here
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.padlock), //PadLock Icon Goes Here
              title: Text("Lock"),
            )
          ],
        ),
      ),
    );
  }
}
