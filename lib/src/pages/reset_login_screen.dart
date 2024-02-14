import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login_screen.dart';
import '../utils/colors.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 98),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Heading change password
                const Text(
                  "Change password",
                  style: TextStyle(
                    fontSize:16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color:ThemeColors.tLoginpg,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Subheading: current password
                const Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 10),
                  child: Text(
                    "Current Password",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        color: ThemeColors.tLoginpg
                    ),
                  ),
                ),

                // current password Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Current Password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color:ThemeColors.inputFieldText,
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    filled: true,
                    fillColor: const Color.fromRGBO(243, 251, 255, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),

                //*****************************************************************************************************
                // Subheading: New Password
                const Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 10),
                  child: Text(
                    "New Password",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color:ThemeColors.tLoginpg,
                    ),
                  ),
                ),

                // New Password Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter New password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color:ThemeColors.inputFieldText,
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    filled: true,
                    fillColor: const Color.fromRGBO(243, 251, 255, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),

                //**************************************************************************************************************
                // Subheading: Confirm Password
                const Padding(
                  padding: EdgeInsets.only(top: 20,bottom:10),
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',

                      color:ThemeColors.tLoginpg,
                    ),
                  ),
                ),

                // Confirm Password Text Field with Decoration
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirm New password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color:ThemeColors.tLoginpg,
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    filled: true,
                    fillColor: const Color.fromRGBO(243, 251, 255, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),

                // chnage password
                const SizedBox(height: 20),

                // Submit Button
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement your logic to change the password
                      // For demonstration purposes, a simple toast message is shown
                      Fluttertoast.showToast(
                        msg: "Password changed successfully",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.transparent,
                        textColor: Colors.lightBlue,
                        fontSize: 16.0,
                      );

                      // Navigate to the login screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
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
                      "Change the password",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),


                // Add space from the top after the Submit button
                const SizedBox(height: 5),

                //*********************************************************************************************************
                // reset password
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(336, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      color:ThemeColors.tLoginpg,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
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
