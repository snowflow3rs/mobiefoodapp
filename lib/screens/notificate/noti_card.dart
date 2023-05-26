import 'package:flutter/material.dart';
import 'package:flutter_project/model/noti_items.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotiCard extends StatelessWidget {
  const NotiCard({
    Key? key,
    required this.noti,
  }) : super(key: key);

  final Noti noti;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset("assets/images/alert1.svg"),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  noti.message,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7643)),
                  maxLines: 2,
                ),
                SizedBox(height: 10),
                Text.rich(TextSpan(
                    text: "${noti.description}",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Colors.black))),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      noti.date,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins",
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(noti.time,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            color: Colors.black)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
