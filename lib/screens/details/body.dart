import 'package:flutter/material.dart';
import 'package:flutter_project/screens/details/color_dot.dart';

import 'package:flutter_project/model/product_items.dart';

import 'top_rounded_container.dart';
import 'package:flutter_project/screens/details/product_des.dart';
import 'package:flutter_project/screens/details/product_img.dart';
import 'package:flutter_project/screens/default_btn.dart';
import 'package:flutter_project/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:flutter_project/screens/cart/cart_screens.dart';

class Body extends StatelessWidget {
  final Product product;
  final cartController = Get.put(CartController());
  Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.add_circle))
                ],
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    DefaultButton(
                      text: "Add To Cart",
                      press: () {
                        cartController.addToCart(product);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
