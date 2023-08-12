import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/theme.dart';
import 'package:flutter_project/widget/categories.dart';
import 'package:flutter_project/screens/special_product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/screens/product.dart';
import 'package:get/get.dart';
import 'package:flutter_project/screens/cart/cart_screens.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFDF6F0),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/locate.svg",
                width: 15,
              ),
              const SizedBox(width: 16 / 2),
              Text(
                "Trang chủ",
                style: TextStyle(
                    fontFamily: "Gordita", fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 18, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF59706F).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: SvgPicture.asset("assets/images/cart.svg"),
                color: Colors.black,
                onPressed: () {
                  Get.to(() => CartScreen());
                },
              ),
            ),
          )
        ],
      ),
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFDF6F0),
            borderRadius: BorderRadius.circular(6),
          ),
          height: 900,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 22, 10, 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Khám phá ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: "Gordita",
                    fontSize: 32),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Chào mừng đến với cửa hàng Iphone",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Gordita",
                  color: Colors.black38,
                ),
              ),
              //form
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Form(
                  child: TextFormField(
                    onSaved: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Tìm kiếm sản phẩm ...",
                      border: outlineInputBorder,
                      enabledBorder: outlineInputBorder,
                      focusedBorder: outlineInputBorder,
                      errorBorder: outlineInputBorder,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SvgPicture.asset("assets/images/Search.svg"),
                      ),
                      suffixIcon: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: SizedBox(
                          width: 48,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF67952),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                            onPressed: () {},
                            child: SvgPicture.asset("assets/images/Filter.svg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Categories(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: SpecialOffers(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: PopularProducts(),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
