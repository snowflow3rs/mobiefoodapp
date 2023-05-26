import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/model/product_items.dart';
import 'package:flutter_project/provider/cart_provider.dart';
import 'package:get/get.dart';

class CardProduct extends StatelessWidget {
  final CartController controller = Get.find();

  CardProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return CartProductCard(
              controller: controller.product.length,
              product: controller.product.keys.toList()[index],
              quantity: controller.product.values.toList()[index],
              index: index,
            );
          }),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/prod1.png"),
            Text(product.title),
            IconButton(
                onPressed: () {
                  controller.removeProduct(product);
                },
                icon: Icon(Icons.remove_circle)),
            Text(
              "\$${product.price}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFF7643),
              ),
            ),
            IconButton(
                onPressed: () {
                  controller.addToCart(product);
                },
                icon: Icon(Icons.add_circle))
          ],
        ));
  }
}
