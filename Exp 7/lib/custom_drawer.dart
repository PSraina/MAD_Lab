import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Profile: Sraina'),
            decoration: BoxDecoration(
              color: Colors.yellow[300],
            ),
          ),
          ListTile(
            title: Text(
              'Inbox',
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              // Handle navigation for Item 1
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text(
              'Archive',
              style: TextStyle(color: Colors.green),
            ),
            onTap: () {
              // Handle navigation for Item 2
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTiles for other items
        ],
      ),
    );
  }
}
