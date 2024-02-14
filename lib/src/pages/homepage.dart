import 'package:flutter/material.dart';

import 'package:newparkingsolution/src/pages/second_setup.dart';
import 'package:newparkingsolution/src/pages/third_entryexit.dart';
import '../utils/colors.dart';
import 'first_ownervehicle.dart';

class SetUpPage extends StatelessWidget {
  const SetUpPage({Key? key}) : super(key: key);

  ElevatedButton createElevatedButton({
    required String text,
    required IconData iconData,
    required VoidCallback onPressed,
    double fontSize = 18.0,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: ThemeColors.setupbutton,
        onPrimary: ThemeColors.setuptext,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: ThemeColors.setupborder),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            const SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Parking Solution",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: ThemeColors.toptheme,
        iconTheme: const IconThemeData(color: ThemeColors.backpress),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0), // Update this line
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top row with two buttons: "Owner/Vehicle" and "Set Up"
              Row(
                children: [
                  Expanded(
                    child: createElevatedButton(
                      text: "Owner/Vehicle",
                      iconData: Icons.directions_car,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OwnerVehicle()),
                        );
                        // Handle the "Owner/Vehicle" button tap
                      },
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: createElevatedButton(
                      text: "Set Up",
                      iconData: Icons.settings,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Setup()),
                        );
                      },
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 10), // Update this line
              // Bottom row with two buttons: "Entry/Exit" and "Report"
              Row(
                children: [
                  Expanded(
                    child: createElevatedButton(
                      text: "Entry/Exit",
                      iconData: Icons.exit_to_app,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResidentVehicle()),
                        );
                        // Handle the "Entry/Exit" button tap
                      },
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: createElevatedButton(
                      text: "Report",
                      iconData: Icons.assignment,
                      onPressed: () {



                        // Handle the "Report" button tap
                      },
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
