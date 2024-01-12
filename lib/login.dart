// LoginScreen.dart
import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/constants/colors.dart';

import 'src/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top:200),
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
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,// Change this to your desired font
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
                      fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      color:tLoginpg// Change this to your desired font
                    ),
                  ),
                ),

                // Phone Number Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400, // Use FontWeight.w700 for weight 700 (Bold)
                    ),
                    border:InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                    filled: true,
                    fillColor: Color.fromRGBO(243, 251, 255,1),
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
                      fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color:tLoginpg// Change this to your desired font
                    ),
                  ),
                ),

                // Password Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400, // Use FontWeight.w700 for weight 700 (Bold)
                    ),
                    border:InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                    filled: true,
                    fillColor: Color.fromRGBO(243, 251, 255,1),

                  ),
                  obscureText: true,
                ),
                SizedBox(height: 50),
                // Submit Button
                Padding(
                  padding: EdgeInsets.symmetric(vertical:5),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement your login logic here
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(336, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      backgroundColor: buttonColor// Adjust the width and height as needed
                    ),
                    child: Text("Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),

                    ),

                  ),

                ),
                // Add space from the top after the Submit button
// Add space from the top after the Submit button
                SizedBox(height: 50),


                // reset password
                TextButton(
                  onPressed: () {
                    // Implement your reset logic or navigation here
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => OtherPage()),
                    // );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(336, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.transparent, // Transparent background
                  ),
                  child: Text(
                    "Reset password?",
                    style: TextStyle(
                      color:buttonColor, // Adjust color as needed
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
