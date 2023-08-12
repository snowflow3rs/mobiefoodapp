import 'dart:async';
import 'dart:math';

import 'package:flutter_project/provider/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter_project/constants.dart';

import 'package:flutter_project/screens/timer/clock_painter.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _cancelTimer();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _dateTime = DateTime.now();
        });
      }
    });
  }

  void _cancelTimer() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Stack(
    //   children: [
    //     Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 20),
    //       child: AspectRatio(
    //         aspectRatio: 1,
    //         child: Container(
    //           decoration: BoxDecoration(
    //             color: Theme.of(context).colorScheme.surface,
    //             shape: BoxShape.circle,
    //             boxShadow: [
    //               BoxShadow(
    //                 offset: Offset(0, 0),
    //                 color: kShadowColor.withOpacity(0.14),
    //                 blurRadius: 64,
    //               ),
    //             ],
    //           ),
    //           child: Transform.rotate(
    //             angle: -pi / 2,
    //             child: CustomPaint(
    //               painter: ClockPainter(context, _dateTime),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       top: 50,
    //       left: 0,
    //       right: 0,
    //       child: SvgPicture.asset(
    //         "assets/images/Sun.svg",
    //         height: 24,
    //         width: 24,
    //         color: Theme.of(context).primaryColor,
    //       ),
    //     ),
    //   ],
    // );
  }
}
