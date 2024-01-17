import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/constants/colors.dart';

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

        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Use the default back icon
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Row(
          children: [
          Icon(
          Icons.settings, // Use the settings icon
          color: Color(0xFF000697), // Set the color of the icon
        ),
        SizedBox(width: 5),
            Text(
              'Set up',
              style: TextStyle(
                color: const Color(0xFF000697),
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
        SwitchListTile(
          title: Text(
            title,
            style: TextStyle(
              color: ThemeColors.tLoginpg,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          value: isSelected,
          onChanged: onChanged,
          activeColor:const Color(0xFFD2F4FF),
          activeTrackColor: const Color(0xFF000697),
          inactiveTrackColor: const Color(0xFF79CFFF),
          controlAffinity: ListTileControlAffinity.trailing,
          subtitle: Text(isSelected ? 'Yes' : 'No', style: const TextStyle(color: ThemeColors.tLoginpg)),

        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          child: const Divider(
            color: const Color(0xFFD2F4FF),
            thickness: 2.0,
          ),
        ),
      ],
    );
  }
}
