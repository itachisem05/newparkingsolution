// LoginScreen.dart
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Heading with Custom Font
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24, // Adjust the font size as needed
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins', // Change this to your desired font
                  ),
                  textAlign: TextAlign.center,
                ),

                // Subheading: Phone Number
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size as needed
                      fontFamily: 'YourCustomFont', // Change this to your desired font
                    ),
                  ),
                ),

                // Phone Number Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(12),
                  ),
                  keyboardType: TextInputType.phone,
                ),

                // Subheading: Password
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size as needed
                      fontFamily: 'YourCustomFont', // Change this to your desired font
                    ),
                  ),
                ),

                // Password Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(12),
                  ),
                  obscureText: true,
                ),

                // Submit Button
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement your login logic here
                    },
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
