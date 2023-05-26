import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/screens/Success/success.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/screens/default_btn.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int? value = 0;
  final paymentLabels = [
    'Credit card / Debit card',
    'Cash on delivery',
    'Paypal',
    'Google wallet',
  ];
  final paymentIcons = [
    Icons.credit_card,
    Icons.money_off,
    Icons.payment,
    Icons.account_balance_wallet,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the elevation
        iconTheme: IconThemeData(
            color: Colors.black), // Set the color of the back icon to black
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(60, 20, 0, 0),
          child: Row(
            children: [
              // SvgPicture.asset(
              //   "assets/images/favour.svg",
              // ),
              const SizedBox(width: 16 / 2),
              Text(
                "Payment",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text("Choose your payment method",
                style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 28,
                    fontWeight: FontWeight.w800)),
          ),
          // HeaderLabel(),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: Color(0xFFFF8084),
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => value = i),
                  ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(color: Color(0xFF303030)),
                  ),
                  trailing: Icon(paymentIcons[index], color: Color(0xFFFF8084)),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
          DefaultButton(
            text: "Pay",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Success()),
              );
            },
          ),
        ],
      ),
    );
  }
}
