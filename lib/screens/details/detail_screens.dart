import 'package:flutter/material.dart';

import 'package:flutter_project/model/product_items.dart';
import 'package:flutter_project/screens/details/body.dart';
import 'package:flutter_project/screens/details/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomAppBar(
            rating: agrs.product.rating,
          ),
        ),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
