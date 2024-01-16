import 'package:flutter/material.dart';
import 'package:newparkingsolution/Splash.dart';

void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
