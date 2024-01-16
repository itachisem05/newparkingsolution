import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/constants/colors.dart';

class SetUpPage extends StatelessWidget {
  const SetUpPage({Key? key}) : super(key: key);

  // Method to create a consistent ElevatedButton with styling
  ElevatedButton createElevatedButton({
    required String text,
    required IconData iconData, // New parameter for the icon
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: ThemeColors.setuptext, backgroundColor: ThemeColors.setupbutton, // Button text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Button border radius
          side: const BorderSide(color: ThemeColors.setupborder), // Button border color
        ),
      ),


        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData),
                // Icon widget
              const SizedBox(width: 5),
              // Add spacing between icon and text
              Text(text), // Button text
            ],
          ),
        ),
      );

  }

  // for app bar
  @override
  Widget build(BuildContext context) {
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

      // **********************************************8
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top row with two buttons: "Owner/Vehicle" and "Set Up"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded
                  (
                  child: createElevatedButton(
                  text: "Owner/Vehicle",
                  iconData: Icons.directions_car, // Add the desired icon
                  onPressed: () {
                    // Handle the "Owner/Vehicle" button tap
                  },
                ),
                ),
                const SizedBox(width: 10),// Add spacing between buttons
                // Use Container with specified width and add an icon
                Expanded(
                  child:createElevatedButton(
                  text: "Set Up",

                  iconData: Icons.settings, // Add the desired icon
                  onPressed: () {
                    // Handle the "Set Up" button tap
                  },
                ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Add some space between the top row and bottom row
            // Bottom row with two buttons: "Entry/Exit" and "Report"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Use Container with specified width and add an icon
                Expanded(
                  child:createElevatedButton(
                  text: "Entry/Exit",

                  iconData: Icons.exit_to_app, // Add the desired icon
                  onPressed: () {
                    // Handle the "Entry/Exit" button tap
                  },
                ),
                ),
                const SizedBox(width: 10),
                // Use Container with specified width and add an icon
                Expanded(
                  child:createElevatedButton(
                  text: "Report",
                    iconData: Icons.assignment, // Add the desired icon
                  onPressed: () {
                    // Handle the "Report" button tap
                  },
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
