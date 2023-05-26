import 'package:flutter/material.dart';
import 'package:flutter_project/model/noti_items.dart';
import 'package:flutter_project/screens/notificate/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatelessWidget {
  static String routeName = "/notification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
      title: Padding(
        padding: EdgeInsets.fromLTRB(60, 20, 0, 0),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/noti.svg",
            ),
            const SizedBox(width: 16 / 2),
            Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
