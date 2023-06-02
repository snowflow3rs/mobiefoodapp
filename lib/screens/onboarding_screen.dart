import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/default_layout_page.dart';
import 'package:flutter_project/login_screens/login_page.dart';
import 'package:flutter_project/intro_screens/intro_page_1.dart';
import 'package:flutter_project/intro_screens/intro_page_2.dart';
import 'package:flutter_project/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static String routeName = "/slash";
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //control track page
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip

                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text(
                      'Bỏ qua',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.orange),
                    )),

                //dot indicators
                SmoothPageIndicator(controller: _controller, count: 3),

                //next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LogInScreen();
                          }));
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 30,
                        ),
                        // Text(
                        //   'Done',
                        //   style: TextStyle(
                        //       fontWeight: FontWeight.w500,
                        //       fontSize: 14,
                        //       color: Color(0xFF6C63FF)),
                        // ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 30,
                        ),
                      ),
              ],
            ))
      ],
    ));
  }
}
