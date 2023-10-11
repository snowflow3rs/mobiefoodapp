import 'package:flutter/material.dart';
import 'package:flutter_project/theme.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // walkthroughpGT (54:512)
      padding: EdgeInsets.fromLTRB(29, 85, 33, 53),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // autogroupnhs3CXu (B6khKcyvvzv9BWfKUsnHS3)
            margin: EdgeInsets.fromLTRB(0, 0, 28, 25),
            width: double.infinity,
            height: 85,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // group174875Lo (55:132)
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  padding: EdgeInsets.fromLTRB(13, 14, 14, 14),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(42.5),
                  ),
                  child: Center(
                    // bellaolonjelogo1111MZD (55:135)
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
                  // freakfoodserviceTMM (54:563)
                  constraints: BoxConstraints(
                    maxWidth: 234,
                  ),
                  child: Text(
                    'Style Step',
                    style: TextStyle(
                      //'Poppins',
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
            // illustrationsVoq (54:517)
            margin: EdgeInsets.fromLTRB(5, 0, 0, 55),

            child: Image.asset(
              "assets/images/2.png",
              width: 300,
              height: 250,
            ),
          ),
          Container(
            // textyDD (169:85)
            margin: EdgeInsets.fromLTRB(4, 0, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  // freedeliveryoffersgNX (169:86)
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 1.12, 13.54),
                    child: Text(
                      'Dễ dàng mua sắm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
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
                  // freedeliveryfornewcustomersvia (169:87)
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 348,
                    ),
                    child: Text(
                      'Dễ dàng thanh toán online  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        //'Poppins',
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
