import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/images/user.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/images/ring.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/images/setting.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/images/question.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/images/log.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
