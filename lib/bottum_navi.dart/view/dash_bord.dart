// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';

import '../../cart_page/add_cart.dart';
import '../../home_page/drawer.dart';
import '../../home_page/home.dart';
import '../../notification/notification.dart';
import '../../profile/profile.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: prefer_final_fields
  List<Widget> _widgets = [
    const Home(),
    const CartPage(),
    const Notifications(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor:
       Color.fromARGB(255, 82, 203, 255),
        iconTheme: const IconThemeData(color: Colors.redAccent),
        title: Center(
          child: Image.asset(
            'assets/images/shopping.png',
            height: 50,
          ),
        ),
        actions: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: _widgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor:         Color.fromARGB(255, 82, 203, 255),
),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Cart',
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifications',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
