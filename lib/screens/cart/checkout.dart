import 'package:flutter/material.dart';
import 'package:flutter_project/provider/cart_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/screens/default_btn.dart';
import 'package:get/get.dart';
import 'package:flutter_project/screens/payment/payment.dart';

class CheckoutCard extends StatelessWidget {
  final CartController controller = Get.find();
  CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        // height: 174,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset("assets/images/receipt.svg"),
                  ),
                  Spacer(),
                  Text("Thêm mã khuyến mãi"),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Color(0xFF757575),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Tổng tiền:\n",
                      children: [
                        TextSpan(
                          text: "${controller.total}",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 190,
                    child: DefaultButton(
                      text: "Check Out",
                      press: () {
                        controller.clearCart();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
