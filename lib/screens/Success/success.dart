import 'package:flutter/material.dart';
import 'package:flutter_project/screens/default_btn.dart';
import 'package:flutter_project/default_layout_page.dart';
import 'package:flutter_project/provider/cart_provider.dart';
import 'package:get/get.dart';

class Success extends StatefulWidget {
  Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/success.gif",
                  height: 150.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Đặt món thành công !!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              " 'Thanh toán của bạn đã được thực hiện thành công'",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
          DefaultButton(
            text: "Oke",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Default()),
              );
            },
          ),
        ],
      ),
    );
  }
}
