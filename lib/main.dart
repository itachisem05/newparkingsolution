import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/pages/splash_screen.dart';
import 'package:newparkingsolution/src/utils/colors.dart';


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
      theme: ThemeData(brightness: Brightness.light,
        primaryColor: ThemeColors.toptheme,
      ),
      darkTheme: ThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
