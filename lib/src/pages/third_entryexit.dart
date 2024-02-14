import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/pages/visitor_entryexit.dart';

import '../utils/colors.dart';

class ResidentVehicle extends StatefulWidget {
  const ResidentVehicle({Key? key}) : super(key: key);

  @override
  _ResidentVehicleState createState() => _ResidentVehicleState();
}

class _ResidentVehicleState extends State<ResidentVehicle> {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.toptheme, // Set the background color of the app bar
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white), // Set icon color here
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Row(
            children: [
              Icon(
                Icons.exit_to_app,
                color: Colors.white, // Set icon color here
              ),
              SizedBox(width: 5),
              Text(
                'Resident Vehicle Entry/Exit',
                style: TextStyle(
                  color: Colors.white, // Set text color here
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenWidth * 0.04),
              Row(
                children: [
                  Text(
                    'Reg No:',
                    style: TextStyle(
                      color: ThemeColors.tLoginpg,
                      fontSize: screenWidth * 0.032,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Container(
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.04),
                      border: Border.all(
                        color: ThemeColors.inputFieldText,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintText: 'Search Vehicle Reg. Number',
                        hintStyle: TextStyle(
                          color: ThemeColors.inputFieldText,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: EdgeInsets.all(
                            screenWidth * 0.02),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.04),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Add your search button functionality here
                    setState(() {
                      showDetails = true; // Show details on button click
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: ThemeColors.toptheme,
                    minimumSize: Size(
                        screenWidth * 0.7, screenWidth * 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.04),
                    ),
                  ),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenWidth * 0.02),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Visitorvehicle()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    minimumSize: Size(
                        screenWidth * 0.7, screenWidth * 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          screenWidth * 0.04),
                    ),
                  ),
                  child: Text(
                    'Visitor Vehicle?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ThemeColors.toptheme,
                      fontSize: screenWidth * 0.032,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              if (showDetails) // Conditional rendering of details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    // Display details here based on search results
                    // Replace the following Text widgets with your actual details widgets
                    Text(
                      'Name: Rina Patel',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Unit Dept: ABC SOCIETY',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Phone Number: +91 1234567890',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: screenWidth * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Entry Button
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for Entry button
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.04),
                        side: BorderSide(
                          width: 2.0, // Adjust the border thickness as needed
                        ),
                      ),
                      minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0,top: 3.0), // Adjust the padding as needed
                          child: Image.asset('assets/images/entry.png', height: 20, width:25),
                        ),
                        Text(
                          'Entry',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Exit Button
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for Exit button
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.04),
                        side: BorderSide(
                          width: 2.0, // Adjust the border thickness as needed
                        ),
                      ),
                      minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0,top: 3.0), // Adjust the padding as needed
                          child: Image.asset('assets/images/exit.png', height: 20, width: 25),
                        ),
                        Text(
                          'Exit',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],

                    ),
                  ),
                ],

              )
            ],

          ),
        ),
      ),
    );

  }
}
