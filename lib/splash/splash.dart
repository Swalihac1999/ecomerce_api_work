import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../home_page/home.dart';
import '../login_screen/view/login_Screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
   @override
  // void initState() {
  //   gotoLogin();
  //   super.initState();
  // }
// @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_f0i1nwjp.json',
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),);
                },
                child: const Text("Get Start",style: TextStyle(color: Colors.black),),
                ),
          ],
        ),
      ),
    );
  
  }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }
// Future<void>gotoLogin() async{
//   await Future.delayed(const Duration(seconds: 3));
//   Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
//     return  LoginScreen();
//   }));
// }

}