import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_project/screens/timer/clock.dart';
import 'package:flutter_project/screens/timer/country_card.dart';
import 'package:flutter_project/screens/timer/time_min_hour.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "(UTC + 7:00)Bangkok, HaNoi, Jakarta",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/images/Liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "+19 HRS | AEST",
                    iconSrc: "assets/images/Sydney.svg",
                    time: "1:20",
                    period: "AM",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
