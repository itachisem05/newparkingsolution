import 'package:flutter/material.dart';
import 'package:newparkingsolution/src/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:ThemeColors.toptheme, // Customize color as needed


      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
