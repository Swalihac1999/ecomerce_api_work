// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(115, 214, 211, 211),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png',
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.edit, color: Colors.amber))
                  ]),
                ),
                Text('Swalih'),
                Text('Swalih@gmail.com'),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
