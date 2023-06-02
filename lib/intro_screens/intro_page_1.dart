import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // walkthroughc9y (165:82)
      padding: EdgeInsets.fromLTRB(25, 80, 36.19, 53),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // autogroupbuew1xo (B6khyrPEBdJUX1YaDdBUew)
            margin: EdgeInsets.fromLTRB(0, 0, 30, 30),
            width: double.infinity,
            height: 85,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // group174876zF (165:123)
                  padding: EdgeInsets.fromLTRB(13, 14, 14, 14),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(42.5),
                  ),
                  child: Center(
                    // bellaolonjelogo1111QV9 (165:126)
                    child: SizedBox(
                      width: 58,
                      height: 57,
                      child: Image.asset(
                        "assets/images/logo.png",
                      ),
                    ),
                  ),
                ),
                Container(
                  // freakfoodserviceJaX (165:122)
                  constraints: BoxConstraints(
                    maxWidth: 234,
                  ),
                  child: Text(
                    'Freak\nFoodService',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      height: 1.0810810811,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // ZFZ (168:166)
            margin: EdgeInsets.fromLTRB(8, 0, 0, 55),

            height: 250,
            child: Image.asset(
              "assets/images/1.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            // textf3h (169:82)
            margin: EdgeInsets.fromLTRB(42.5, 0, 20.31, 30),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  // allyourfavoritesNTu (169:83)
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 15, 13),
                    child: Text(
                      'Đồ ăn yêu thích',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        height: 1.2666666667,
                        letterSpacing: 0.3199999928,
                        color: Color(0xff010f07),
                      ),
                    ),
                  ),
                ),
                Center(
                  // orderfromthebestlocalrestauran (169:84)
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 286,
                    ),
                    child: Text(
                      'Đặt đồ ăn từ những nơi gần nhất, giao hàng theo yêu cầu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        letterSpacing: -0.400000006,
                        color: Color(0xff868686),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
