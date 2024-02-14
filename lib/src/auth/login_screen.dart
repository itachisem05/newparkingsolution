import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/auth/reset_login_screen.dart';



import '../pages/homepage.dart';
import '../utils/colors.dart';
class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key, Key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 102),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Heading with Custom Font
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: ThemeColors.tLoginpg
                  ),
                  textAlign: TextAlign.center,
                ),

                // Subheading: Phone Number
                const Padding(
                  padding: EdgeInsets.only(top: 54, bottom: 10),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',

                      color: ThemeColors.tLoginpg,
                    ),
                  ),
                ),

                // Phone Number Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ThemeColors.inputFieldText,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,// Set rounded corners
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    filled: true,
                    fillColor: const Color.fromRGBO(243, 251, 255, 1),
                  ),
                  keyboardType: TextInputType.phone,
                ),

                // Subheading: Password
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(

                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ThemeColors.tLoginpg,
                    ),
                  ),
                ),

                // Password Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: ThemeColors.inputFieldText,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,// Set rounded corners
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    filled: true,
                    fillColor: const Color.fromRGBO(243, 251, 255, 1),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),

                // Submit Button
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement your login logic here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SetUpPage()),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(336, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor:ThemeColors.buttonColor,
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                // Add space from the top after the Submit button
                const SizedBox(height: 5),

                // reset password
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChangePasswordScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(336, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    "Reset password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:ThemeColors.buttonColor,

                      fontWeight: FontWeight.w400,
                    ),
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
