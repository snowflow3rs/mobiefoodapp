import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            Image.asset("assets/images/2.png", height: 250),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Free delivery offers",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              "Free delivery for new customers via Apple Pay \nand others payment methods. ",
              textAlign: TextAlign.center,
            ),
            const Spacer()
          ],
        ));
  }
}
