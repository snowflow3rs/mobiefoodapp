import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final int quantity;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    this.quantity = 1,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/burtest.png",
      "assets/images/bur1.png",
      "assets/images/bur2.png",
      "assets/images/bur4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "iPhone 14",
    price: 40.10,
    description: "iPhone mới nhất đến từ nhà Apple với hệ điều hành mạnh mẽ.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/vege3.png",
      "assets/images/vege1.png",
      "assets/images/vege2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "iPhone 13",
    price: 50.5,
    description:
        "iPhone 13 mang lại trải nghiệm tốt với người dùng và sở hữu màu sắc đẹp mắt",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/drink1.png",
      "assets/images/drink2.png",
      "assets/images/drink3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "iPhone 12",
    price: 36.55,
    description:
        "Với hệ điều hành tốt và giá cả hơp lí mang lại giá trị sử dụng tốt ",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/dessert1.png",
      "assets/images/dessert2.png",
      "assets/images/dessert3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "iPhone 11",
    price: 26.55,
    description:
        "Với camera và dung lượng pin tốt, iPhone 11 mang lại trải nghiệm tốt với giá cả hợp lí cho người dùng",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];
