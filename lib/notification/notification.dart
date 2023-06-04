import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Text('Notifications',style: GoogleFonts.actor(fontSize: 14)),
    ),);
  }
}