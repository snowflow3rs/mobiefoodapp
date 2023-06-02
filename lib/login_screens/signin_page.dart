import 'package:flutter/material.dart';
import 'package:flutter_project/default_layout_page.dart';
import 'package:flutter_project/widget/checkbox.dart';
import 'package:flutter_project/widget/signup_form.dart';
import 'package:flutter_project/login_screens/login_page.dart';
import 'package:flutter_project/theme.dart';

import 'package:flutter_project/widget/login_option.dart';
import 'package:flutter_project/widget/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins"),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: Text(
                      'Đăng nhập',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: CheckBox('Agree to terms and conditions.'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: CheckBox('I have at least 18 years old.'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Default()));
                },
                child: PrimaryButton(buttonText: 'ĐĂNG KÝ  '),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Or log in with:',
                style: subTitle.copyWith(color: Color(0xFF272726)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: LoginOption(),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
