import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:gallery_saver/gallery_saver.dart';

import '../utils/colors.dart';

class Visitorvehicle extends StatefulWidget {
  const Visitorvehicle({Key? key}) : super(key: key);

  @override
  _VisitorvehicleState createState() => _VisitorvehicleState();
}

class _VisitorvehicleState extends State<Visitorvehicle> {
  bool showDetails = false;
  final ImagePicker _picker = ImagePicker();
  List<File> _images = [];

  Future<void> _getImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      final appDirectory = await getExternalStorageDirectory();
      final imagePath = '${appDirectory!.path}/image_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final File newImage = await File(image.path).copy(imagePath);
      setState(() {
        _images.add(newImage);
      });
      // Save the captured image to the gallery
      await GallerySaver.saveImage(newImage.path, albumName: 'parking solution');
    }
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Image.file(
            File(imagePath),
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:ThemeColors.toptheme, // Set the background color to blue
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white), // Set icon color to white
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Row(
            children: [
              const Icon(
                Icons.exit_to_app,
                color: Colors.white, // Set icon color to white
              ),
              const SizedBox(width: 5),
              Text(
                'Visitor Vehicle Entry/Exit',
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenWidth * 0.04),
                  Row(
                    children: [
                      Text(
                        'Unit/Dept:',
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
                          borderRadius: BorderRadius.circular(screenWidth * 0.04),
                          border: Border.all(
                            color: ThemeColors.inputFieldText,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            hintText: 'Search Department or unit',
                            hintStyle: const TextStyle(
                              color: ThemeColors.inputFieldText,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            contentPadding: EdgeInsets.all(screenWidth * 0.02),
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
                        minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.04),
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
                  Container(
                    height: 1,
                    color: ThemeColors.inputFieldText,
                    margin: EdgeInsets.symmetric(vertical: screenWidth * 0.03),
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  if (showDetails)
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name: Rina Patel',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Text(
                            'Unit Dept: ABC SOCIETY',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Text(
                            'Phone Number: +91 1234567890',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: screenWidth * 0.02),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Add functionality for making a call
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ThemeColors.toptheme,
                                minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                                ),
                              ),
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenWidth * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Add functionality for allowed button
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ThemeColors.white,
                                  minimumSize: Size(screenWidth * 0.4, screenWidth * 0.2), // Adjust size as needed
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.04),
                                    side: BorderSide(color:ThemeColors.inputFieldText),
                                  ),
                                ),
                                child: Text(
                                  'Allowed',
                                  style: TextStyle(
                                    color: ThemeColors.toptheme,
                                    fontSize: screenWidth * 0.04,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.02), // Adjust spacing as needed
                              Flexible(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add functionality for allowed without confirmation button
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: ThemeColors.white,
                                    minimumSize: Size(screenWidth * 0.01, screenWidth * 0.2), // Adjust size as needed
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                                      side: BorderSide(color:ThemeColors.inputFieldText),
                                    ),
                                  ),
                                  child: Text(
                                    'Allowed without Confirmation',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ThemeColors.toptheme,
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            color: ThemeColors.inputFieldText,
                            margin: EdgeInsets.symmetric(vertical: screenWidth * 0.06),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: screenWidth * 0.04),
                              Row(
                                children: [
                                  Text(
                                    'Vehicle No:',
                                    style: TextStyle(
                                      color: ThemeColors.tLoginpg,
                                      fontSize: screenWidth * 0.035,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.02),
                                  Container(
                                    width: screenWidth * 0.2, // Adjust width as needed
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
                                        hintText: 'Prefix', // Add hint for prefix
                                        hintStyle: TextStyle(
                                          color: ThemeColors.inputFieldText,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        contentPadding: EdgeInsets.all(screenWidth * 0.02),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.02),
                                  Container(
                                    width: screenWidth * 0.4,
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
                                        hintText: 'Number', // Add hint for number
                                        hintStyle: TextStyle(
                                          color: ThemeColors.inputFieldText,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        contentPadding: EdgeInsets.all(screenWidth * 0.02),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenWidth * 0.04),
                              Row(
                                children: [
                                  Text(
                                    'Visitor Name:',
                                    style: TextStyle(
                                      color: ThemeColors.tLoginpg,
                                      fontSize: screenWidth * 0.035,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.01),
                                  Container(
                                    width: screenWidth * 0.5,
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
                                        hintText: 'Enter visitor name',
                                        hintStyle: TextStyle(
                                          color: ThemeColors.inputFieldText,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        contentPadding: EdgeInsets.all(screenWidth * 0.02),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenWidth * 0.05), // Adjust spacing as needed
                              Center(
                                child: ElevatedButton(
                                  onPressed: _getImageFromCamera,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: ThemeColors.toptheme,
                                    minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload Photo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              // Display the captured images
                              SizedBox(height: screenWidth * 0.02),
                              if (_images.isNotEmpty)
                                Wrap(
                                  children: _images.map((image) {
                                    return GestureDetector(
                                      onTap: () => _showImageDialog(context, image.path),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.file(
                                          File(image.path),
                                          width: screenWidth * 0.3,
                                          height: screenWidth * 0.3,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                            ],
                          )

                        ]

                    ),
                  SizedBox(height: screenWidth * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for Entry button
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.04),
                            side: const BorderSide(
                              width: 2.0, // Adjust the border thickness as needed
                            ),
                          ),
                          minimumSize: Size(screenWidth * 0.4, screenWidth * 0.1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0,top: 3.0),
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
                              padding: const EdgeInsets.only(bottom: 8.0,top: 3.0),
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
                  ),
                ],
              ),
            )
        ),
      ),
    );


  }
}
