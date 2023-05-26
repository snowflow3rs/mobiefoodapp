import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_project/size_config.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
    required this.country,
    required this.timeZone,
    required this.iconSrc,
    required this.time,
    required this.period,
  }) : super(key: key);

  final String country, timeZone, iconSrc, time, period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(240),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xFFECEFF5)
                  //  Theme.of(context).primaryIconTheme.color,
                  ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(timeZone),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(40),
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
