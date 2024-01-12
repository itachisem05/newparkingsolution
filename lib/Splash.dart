import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newparkingsolution/login.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 10),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),
      ));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFCDEDFF),
            Color(0xFFF2DEFF)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Main_image.png', height: 850,),
            // const SizedBox(height: 450,),
            // Image.asset('assets/Car_Shadow.png', height: 300,),
            // // const SizedBox(height: 25,),
            // Image.asset('assets/Parking_Solution_Text.png', height:900,)

          ],

        ),
      ),
    );
  }
}
