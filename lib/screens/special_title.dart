import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: "Gordita",
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "xem thêm",
            style: TextStyle(color: Colors.black54, fontFamily: "Gordita"),
          ),
        ),
      ],
    );
  }
}
