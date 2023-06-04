// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('SWALIH'),
              accountEmail: Text('Swalihac1999@gamil.com'),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  'assets/images/shopping.png',
                  height: 50,
                ),
                backgroundColor: Colors.white38,
              ),
              decoration: BoxDecoration(color: Color.fromARGB(97, 89, 87, 87))),
 
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setteings'),
            onTap: () {},
          ),
      
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout', style: TextStyle(color: Colors.red)),
          )
        ],
      ),
    );
  }
}
