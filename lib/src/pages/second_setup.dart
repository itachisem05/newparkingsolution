import 'package:flutter/material.dart';


import '../utils/colors.dart';

class Setup extends StatefulWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  State<Setup> createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSelected7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:ThemeColors.toptheme, // Set app bar background color to blue
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Set icon color to white
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Icon(
              Icons.settings,
              color: Colors.white, // Set icon color to white
            ),
            SizedBox(width: 5),
            Text(
              'Set up',
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          buildListTile('Sensor for Exit', isSelected1, (value) {
            setState(() {
              isSelected1 = value;
            });
          }),
          buildListTile('Sensor For Entry', isSelected2, (value) {
            setState(() {
              isSelected2 = value;
            });
          }),
          buildListTile('Card for Exit', isSelected3, (value) {
            setState(() {
              isSelected3 = value;
            });
          }),
          buildListTile('Card For Entry', isSelected4, (value) {
            setState(() {
              isSelected4 = value;
            });
          }),
          buildListTile('Present Entry List', isSelected5, (value) {
            setState(() {
              isSelected5 = value;
            });
          }),
          buildListTile('Guest Verification', isSelected6, (value) {
            setState(() {
              isSelected6 = value;
            });
          }),
          buildListTile('Print Entry Ticket', isSelected7, (value) {
            setState(() {
              isSelected7 = value;
            });
          }),
        ],
      ),
    );
  }

  Widget buildListTile(String title, bool isSelected, ValueChanged<bool> onChanged) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ThemeColors.tLoginpg,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Text(
                    'No',
                    style: TextStyle(
                      color: isSelected ? Colors.grey : ThemeColors.tLoginpg,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Switch(
                    value: isSelected,
                    onChanged: onChanged,
                    activeColor: Color(0xFFD2F4FF),
                    activeTrackColor: Color(0xFF000697),
                    inactiveTrackColor: Color(0xFFF4F7F8),
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(
                      color: isSelected ? ThemeColors.tLoginpg : Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Color(0xFFD2F4FF),
          thickness: 2.0,
        ),
      ],
    );
  }
}
