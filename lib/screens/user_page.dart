import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/screens/profile_menu.dart';
import 'package:flutter_project/screens/profile_pic.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        // padding: EdgeInsets.symmetric(vertical: 20),
        // child: Column(
        //   children: [
        //     ProfilePic(),
        //     SizedBox(height: 20),
        //     ProfileMenu(
        //       text: "My Account",
        //       icon: "assets/images/ava.png",
        //       press: () => {},
        //     ),
        //     ProfileMenu(
        //       text: "Notifications",
        //       icon: "assets/icons/Bell.svg",
        //       press: () {},
        //     ),
        //     ProfileMenu(
        //       text: "Settings",
        //       icon: "assets/icons/Settings.svg",
        //       press: () {},
        //     ),
        //     ProfileMenu(
        //       text: "Help Center",
        //       icon: "assets/icons/Question mark.svg",
        //       press: () {},
        //     ),
        //     ProfileMenu(
        //       text: "Log Out",
        //       icon: "assets/icons/Log out.svg",
        //       press: () {},
        //     ),
        //   ],
        // ),
        );
  }
}
