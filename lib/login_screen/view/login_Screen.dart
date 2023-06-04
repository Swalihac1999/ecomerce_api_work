import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottum_navi.dart/view/dash_bord.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 82, 203, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/shopping.png',
              height: mediaquery.size.height * 0.36,
              width: mediaquery.size.width * 0.59,
            ),
            Text(
              'SIGN IN',
              style: GoogleFonts.almarai(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
            textField(
              mediaquery,
              'Mobile Number',
              const Icon(FontAwesomeIcons.mobileScreen),
            ),
            textField(
              mediaquery,
              'PIN',
              const Icon(Icons.key),
            ),
            SizedBox(
              height: mediaquery.size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashbord(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Container(
                  height: mediaquery.size.height * 0.06,
                  width: mediaquery.size.width * 0.33,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaquery.size.height * 0.02,
            ),
            TextButton(
                onPressed: null,
                child: Text(
                  'SIGN UP',
                  style: GoogleFonts.almarai(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }

  Padding textField(MediaQueryData mediaquery, String text, Icon icon) {
    return Padding(
      padding: EdgeInsets.only(
          top: mediaquery.size.height * 0.05,
          left: mediaquery.size.width * 0.09,
          right: mediaquery.size.width * 0.09),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: icon,
            filled: true,
            hintStyle: const TextStyle(color: Colors.grey, letterSpacing: 1.3),
            hintText: text,
            fillColor: Colors.white),
      ),
    );
  }
}



























// ignore_for_file: prefer_const_constructors, unnecessary_const, use_decorated_box, prefer_const_literals_to_create_immutables, avoid_redundant_argument_values, lines_longer_than_80_chars, no_leading_underscores_for_local_identifiers, unused_local_variable, must_be_immutable

// import 'package:ecomerce_apiwork/home_page/home.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../bottum_navi.dart/view/dash_bord.dart';

// class LoginScreen extends StatelessWidget {
//   LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final _msize = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color:   Color.fromARGB(255, 105, 230, 109),
//           ),
//           child: Column(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: const <Widget>[
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'Pharmy',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 40,
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Welcome Back',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color.fromARGB(73, 29, 29, 37),
//                         blurRadius: 2000,
//                         offset: Offset(0, 10),
//                       )
//                     ],
//                     color: Color.fromARGB(255, 243, 240, 240),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(50),
//                       topRight: Radius.circular(50),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(30),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white30,
//                               borderRadius: BorderRadius.circular(10),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Color.fromARGB(75, 54, 51, 49),
//                                   blurRadius: 20,
//                                   offset: Offset(0, 10),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               children: [
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     hintText: 'Email',
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                     suffixIcon: const Icon(Icons.person),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     hintText: 'Passwrod',
//                                     filled: true,
//                                     fillColor: Colors.white,
//                                     suffixIcon: const Icon(
//                                       Icons.remove_red_eye,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 175),
//                             child: TextButton(
//                               onPressed: () {},
//                               child: Text(
//                                 'Forget Passwrod',
//                                 style: TextStyle(
//                                     color: Color.fromARGB(221, 104, 102, 102)),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           MaterialButton(
//                             minWidth: double.infinity,
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Dashbord(),
//                                 ),
//                               );
//                             },
//                             child: Text('Login'),
//                             height: 60,
//                             color: Color.fromARGB(255, 105, 230, 109),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                   width: (_msize / 2) - 50, child: Divider()),
//                               Text('Or'),
//                               SizedBox(
//                                   width: (_msize / 2) - 50, child: Divider()),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Card(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30.0),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(
//                                     Icons.facebook,
//                                     color: Colors.blue,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Card(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(30.0),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: FaIcon(FontAwesomeIcons.instagram),
//                                   color: Color.fromARGB(255, 228, 45, 185),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text('Dont have an account?'),
//                               TextButton(
//                                 onPressed: null,
//                                 child: Text('Sigh up'),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
