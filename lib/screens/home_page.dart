import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/theme.dart';
import 'package:flutter_project/widget/categories.dart';
import 'package:flutter_project/screens/special_product.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/Location.svg"),
            const SizedBox(width: 16 / 2),
            Text(
              "Current location",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.notifications_none_outlined),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.black45,
            ),
            onPressed: () {},
          ),
        ],
      ),
      // backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFDF6F0),
          borderRadius: BorderRadius.circular(6),
        ),
        height: 900,
        width: 400,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 22, 10, 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Explore",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 32),
            ),
            const Text(
              "what would you like to order",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Inter",
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
                    hintText: "Search items...",
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
            // Row(
            //   children: [
            //     Text(
            //       "Category",
            //       style: TextStyle(
            //           fontWeight: FontWeight.w500,
            //           color: Colors.black,
            //           fontSize: 20),
            //     ),
            //     SizedBox(
            //       width: 16,
            //     ),
            //     Text(
            //       "more...",
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Categories(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: SpecialOffers(),
            ),
          ]),
        ),
      ),
    );
  }
}