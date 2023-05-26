import 'package:flutter_project/screens/timer/body.dart';
import 'package:flutter_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // String routeName = "/timer";

    // we have to call this on our starting page
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/images/set2.svg",
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {},
      ),
      actions: [buildAddButton(context)],
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
