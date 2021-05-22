import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = 'https://avatars.githubusercontent.com/u/47472554?v=4';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Athar Mahboob"),
              accountEmail: Text("athar@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home", textScaleFactor: 1.2),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile", textScaleFactor: 1.2),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text("Email Me", textScaleFactor: 1.2),
          ),
        ],
      ),
    );
  }
}
