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
            gradient: LinearGradient(colors: [Colors.blueAccent, Colors.pinkAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(image: )
              Icon(
                Icons.car_crash,
                size: 150,
                color: Colors.blueGrey,
              )
            ],

          ),
        ),
    );
  }
}