import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/model/product_items.dart';
import 'package:flutter_project/provider/cart_provider.dart';
import 'package:flutter_project/screens/cart/cp.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_project/screens/cart/checkout.dart';
import 'package:flutter/cupertino.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.put(CartController());

  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(80, 20, 0, 0),
          child: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(color: Colors.black, fontFamily: "Inter"),
              ),
              Text(
                " items",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () {
                  if (controller.product.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/emptyc.svg",
                            width: 120,
                            height: 120,
                            color: Colors.black45,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Your cart is empty",
                            // style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: controller.product.length,
                      itemBuilder: (BuildContext context, int index) {
                        final product = controller.product.keys.toList()[index];
                        final quantity =
                            controller.product.values.toList()[index];
                        return CartItem(
                          controller: controller,
                          product: product,
                          quantity: quantity,
                        );
                      },
                    );
                  }
                },
              ),
            ),
            CheckoutCard(),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final Product product;
  final int quantity;
  final CartController controller;

  CartItem({
    required this.controller,
    required this.product,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            Expanded(
              child: Text(
                product.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Gordita",
                ),
                maxLines: 2,
              ),
            ),
            IconButton(
              onPressed: () {
                if (quantity > 1) {
                  controller.removeFromCart(product);
                } else {
                  controller.removeProduct(product);
                }
              },
              icon: Icon(Icons.remove_circle, color: Colors.black),
            ),
            Text(
              "$quantity",
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                controller.addToCart(product);
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.removeFromCart(product);
              },
              child: SvgPicture.asset(
                "assets/images/Trash.svg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
