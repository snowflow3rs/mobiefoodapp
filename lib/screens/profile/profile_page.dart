import 'package:flutter/material.dart';

import 'package:flutter_project/screens/profile/body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the elevation
        iconTheme: IconThemeData(
            color: Colors.black), // Set the color of the back icon to black
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
