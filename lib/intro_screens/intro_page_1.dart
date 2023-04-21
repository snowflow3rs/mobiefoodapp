import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            Image.asset("assets/images/1.png", height: 250),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Find the item you've \nbeen looking for",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              "Here you 'll see rich varieties of goods, carefully classsify from seamless browsing ",
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
