import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // walkthroughRtF (160:249)
      padding: EdgeInsets.fromLTRB(23, 66, 27.5, 53),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // autogroupafsqdUX (B6kie5nXSFgorWRpxNafsq)
            margin: EdgeInsets.fromLTRB(0, 0, 38.5, 10),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // group17487Xpo (54:800)
                  margin: EdgeInsets.fromLTRB(0, 0, 6, 9),
                  padding: EdgeInsets.fromLTRB(13, 14, 14, 14),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(42.5),
                  ),
                  child: Center(
                    // bellaolonjelogo1111R9V (54:803)
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
                  // freakfoodservicehco (54:726)
                  constraints: BoxConstraints(
                    maxWidth: 234,
                  ),
                  child: Text(
                    'Iphone\nshopping',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      height: 1.0810810811,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // illustrations9zb (160:86)
            margin: EdgeInsets.fromLTRB(2.02, 0, 0, 51),

            child: Image.asset(
              "assets/images/3.png",
              height: 280,
            ),
          ),
          Container(
            // textnXm (160:798)
            margin: EdgeInsets.fromLTRB(13.5, 0, 0, 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  // chooseyourfood2h1 (160:799)
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 1.15, 10),
                    child: Text(
                      'Liên hệ/Hỗ trợ',
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
                  // easilyfindyourtypeoffoodcravin (160:800)
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 350,
                    ),
                    child: Text(
                      'Hộ trợ sản phẩm tốt nhất cho người dùng',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
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
