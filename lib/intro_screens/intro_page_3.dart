import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            Image.asset("assets/images/3.png", height: 250),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Choose your food",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              "Easily find your type of food craving and you'll \n get delivery in wide range",
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
