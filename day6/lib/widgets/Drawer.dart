import 'package:flutter/cupertino.dart';
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
                backgroundImage: AssetImage('../assets/images/profile.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.padlock),
              title: Text("Lock"),
            )
          ],
        ),
      ),
    );
  }
}
