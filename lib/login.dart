import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}); // Corrected the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Login", style: Theme.of(context).textTheme.headline6),
              // Add other login UI components here
            ],
          ),
        ),
      ),
    );
  }
}
