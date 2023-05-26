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
    title: "Combo Burgers",
    price: 64.99,
    description:
        "A burger is a popular fast food item consisting of a cooked ground meat patty, typically beef, served in a sliced bun. It is a classic ... American food that has become a beloved staple around the world. Burgers are known for their delicious combination of flavors and textures, with juicy meat, melted cheese, and a variety of toppings such as lettuce, tomatoes, onions, pickles, and condiments like ketchup and mustard. They can be customized to suit individual preferences, and options like veggie burgers or chicken burgers are also available for those who prefer alternatives to beef. Whether enjoyed at a restaurant, food truck, or homemade, burgers are a satisfying and convenient choice for a tasty meal.",
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
    title: "Vegetables Pizza",
    price: 50.5,
    description:
        "Vegetable pizza is a delicious and nutritious variation of the classic pizza dish. It features a thin or thick crust topped with a variety of fresh and colorful vegetables. Common vegetable toppings include bell peppers, onions, mushrooms, tomatoes, spinach, olives, and sometimes even corn or broccoli. These vibrant toppings not only add a burst of flavors but also provide a range of vitamins, minerals, and dietary fiber. Vegetable pizza is a popular choice for those seeking a healthier option or for vegetarians and vegans looking for a meat-free alternative. It offers a satisfying combination of savory flavors and a lighter, more refreshing taste compared to other pizza varieties. Whether enjoyed at a pizzeria or made at home, vegetable pizza is a delightful choice for pizza lovers who enjoy the goodness of vegetables.",
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
    title: "Orange Juices",
    price: 36.55,
    description:
        "Orange juice is a refreshing and tangy beverage made from freshly squeezed oranges. It is a popular choice for breakfast or as a refreshing drink throughout the day. Orange juice is known for its vibrant orange color and sweet yet slightly acidic taste. It is rich in vitamin C, which is essential for boosting the immune system and promoting overall health. The natural sugars in orange juice provide a burst of energy, making it a great choice to start your day or rehydrate after physical activity. Whether enjoyed chilled or with ice, orange juice is a timeless classic that offers a delightful combination of citrusy flavors and a refreshing sensation. Raise a glass of orange juice and enjoy the invigorating taste of sunshine captured in a single sip.",
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
    title: "Cake",
    price: 26.55,
    description:
        "Dessert cake is a delightful treat made with moist and fluffy layers, filled and topped with various flavors and frostings. It's a popular choice for celebrations and special occasions, offering a wide range of flavors and irresistible sweetness.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];
