import 'package:flutter/material.dart';
import 'package:flutter_project/model/product_items.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  // Add a product to the cart
  void addToCart(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      'Product Added', // Title of the snackbar
      'You have added the ${product.title} to the cart', // Message of the snackbar
      snackPosition: SnackPosition.TOP, // Position of the snackbar
      backgroundColor: Colors.grey[200], // Background color of the snackbar
      colorText: Colors.black, // Text color of the snackbar
      duration:
          Duration(seconds: 2), // Duration for which the snackbar is visible
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.remove((key, value) => key == product.title);
    } else {
      _products[product] = 1;
    }
  }

  void removeFromCart(Product product) {
    if (_products.containsKey(product)) {
      final int newQuantity = _products[product]! - 1;
      if (newQuantity > 0) {
        _products[product] = newQuantity;
      } else {
        _products.remove(product);
      }
    }
  }

  get product => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();
  get total {
    if (_products.isEmpty) {
      return '0.00'; // Return a default value when the cart is empty
    } else {
      return _products.entries
          .map((product) => product.key.price * product.value)
          .toList()
          .reduce((value, element) => value + element)
          .toStringAsFixed(2);
    }
  }
}
