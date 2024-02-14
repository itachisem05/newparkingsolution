import 'package:flutter/material.dart';

import '../utils/colors.dart';

class OwnerVehicle extends StatefulWidget {
  const OwnerVehicle({Key? key}) : super(key: key);

  @override
  _OwnerVehicle createState() => _OwnerVehicle();
}

class _OwnerVehicle extends State<OwnerVehicle> {
  bool showDetails = false;

  TextStyle textStyle(double screenWidth) {
    return TextStyle(
      color: ThemeColors.tLoginpg,
      fontSize: screenWidth * 0.032,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle inputFieldTextStyle() {
    return const TextStyle(
      color: ThemeColors.inputFieldText,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    );
  }

  Widget _buildTextFieldRow({
    required String labelText,
    required double screenWidth,
    required TextEditingController controller,
    required String hintText,
  }) {
    final labelWidth = screenWidth * 0.20; // Adjust the label width as needed
    final textFieldWidth = screenWidth *
        0.7; // Adjust the text field width as needed

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: labelWidth,
          child: Text(
            labelText,
            style: textStyle(screenWidth),
          ),
        ),
        SizedBox(width: screenWidth * 0.04),
        Expanded(
          child: Container(
            constraints: BoxConstraints(maxWidth: textFieldWidth),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.04),
              border: Border.all(
                color: ThemeColors.inputFieldText,
                style: BorderStyle.solid,
                width: 1.02,
              ),
            ),
            child: TextField(
              controller: controller,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: inputFieldTextStyle(),
                contentPadding: EdgeInsets.all(screenWidth * 0.02),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    TextEditingController ownerController = TextEditingController();
    TextEditingController unitDeptController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController modelController = TextEditingController();
    TextEditingController regNoPrefixController = TextEditingController();
    TextEditingController regNoNumberController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.toptheme, // Set app bar background to blue
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white), // Set icon color to white
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Row(
            children: [
              const Icon(
                Icons.person,
                color: Colors.white, // Set icon color to white
              ),
              const SizedBox(width: 5),
              Text(
                'Owner/Vehicle',
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenWidth * 0.03),
                _buildTextFieldRow(
                  labelText: 'Owner:',
                  screenWidth: screenWidth,
                  controller: ownerController,
                  hintText: 'Enter Name',
                ),
                SizedBox(height: screenWidth * 0.03),
                _buildTextFieldRow(
                  labelText: 'Unit/Dept:',
                  screenWidth: screenWidth,
                  controller: unitDeptController,
                  hintText: 'Enter Unit/Dept',
                ),
                SizedBox(height: screenWidth * 0.03),
                _buildTextFieldRow(
                  labelText: 'Phone No:',
                  screenWidth: screenWidth,
                  controller: phoneController,
                  hintText: 'Enter Contact no',
                ),
                SizedBox(height: screenWidth * 0.03),
                Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        showDetails = !showDetails;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize: Size(screenWidth * 0.7, screenWidth * 0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.04),
                      ),
                    ),
                    child: Text(
                      'Add Family Member',
                      style: textStyle(screenWidth),
                    ),
                  ),
                ),
                SizedBox(height: screenWidth * 0.02),
                Visibility(
                  visible: showDetails,
                  child: Column(
                    children: [
                      _buildTextFieldRow(
                        labelText: 'Name:       ',
                        screenWidth: screenWidth,
                        controller: nameController,
                        hintText: 'Enter name',
                      ),
                      SizedBox(height: screenWidth * 0.02),
                      _buildTextFieldRow(
                        labelText: 'Phone No:',
                        screenWidth: screenWidth,
                        controller: phoneNumberController,
                        hintText: 'Enter phone number',
                      ),
                      SizedBox(height: screenWidth * 0.02),
                    ],
                  ),
                ),
                SizedBox(height: screenWidth * 0.02),
                Container(
                  height: 1,
                  width: screenWidth * 0.9,
                  color: ThemeColors.inputFieldText,
                  margin: EdgeInsets.symmetric(vertical: screenWidth * 0.01),
                ),
                SizedBox(height: screenWidth * 0.02),
                _buildTextFieldRow(
                  labelText: 'Model:       ',
                  screenWidth: screenWidth,
                  controller: modelController,
                  hintText: 'Enter Model or color ',
                ),
                SizedBox(height: screenWidth * 0.03),
                Row(
                  children: [
                    Text(
                      'Reg.No:        ',
                      style: textStyle(screenWidth),
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    Container(
                      width: screenWidth * 0.25,
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: regNoPrefixController,
                        decoration: InputDecoration(
                          hintText: 'Prefix',
                          hintStyle: inputFieldTextStyle(),
                          contentPadding: EdgeInsets.all(screenWidth * 0.02),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ThemeColors.inputFieldText,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ThemeColors.inputFieldText,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(screenWidth * 0.04),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),

                    Container(
                      width: screenWidth * 0.40,
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: regNoNumberController,
                        decoration: InputDecoration(
                          hintText: 'Number',
                          hintStyle: inputFieldTextStyle(),
                          contentPadding: EdgeInsets.all(screenWidth * 0.02),
                          enabledBorder: OutlineInputBorder( // Use OutlineInputBorder for outline border
                            borderSide: BorderSide( // Set the border color and style
                              color: ThemeColors.inputFieldText,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(screenWidth * 0.04),
                          ),
                          focusedBorder: OutlineInputBorder( // Border when the TextField is focused
                            borderSide: BorderSide(
                              color: ThemeColors.inputFieldText,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(screenWidth * 0.04),
                          ),
                        ),
                      ),
                    ),



                  ],
                ),

                SizedBox(height: screenWidth * 0.03),
                Row(
                  children: [
                    Text(
                      'ID Card No:',
                      style: TextStyle(
                        color: ThemeColors.tLoginpg,
                        fontSize: screenWidth * 0.032,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Container(
                      width: screenWidth * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.04),
                        border: Border.all(
                          color: ThemeColors.inputFieldText,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          hintText: ' Enter ID Card No',
                          hintStyle: inputFieldTextStyle(),
                          contentPadding: EdgeInsets.all(screenWidth * 0.02),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for making a call
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ThemeColors.toptheme,
                        minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth *
                              0.04),
                        ),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for making a call
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ThemeColors.toptheme,
                        minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth *
                              0.04),
                        ),
                      ),
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
