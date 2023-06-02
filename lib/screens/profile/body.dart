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
            text: "Tài khoản",
            icon: "assets/images/user.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Thông báo",
            icon: "assets/images/ring.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Cài đặt khác",
            icon: "assets/images/setting.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Hỗ trợ và tư vấn viên",
            icon: "assets/images/question.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Đăng xuất",
            icon: "assets/images/log.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
