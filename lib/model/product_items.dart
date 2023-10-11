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
    title: "Nike Air Force 1 size 42 ",
    price: 50.58 ,
    description: "Là sản phẩm được giới trẻ ưa chuộng nhất hiện nay với ngoại hình dễ dàng phối đồ và form dáng thoải mái",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/yzy.png",
      "assets/images/yzy2.png",
      "assets/images/yzy3.png",

    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Yeezy Cream white Size 43",
    price: 100.59,
    description:
        "Là dòng giày được giới sneaker ưa chuộng và được mang nhiều bởi những phần boots hỗ trợ giúp cho phần chân đi trở nên êm ái hơi",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/tg1.png",
      "assets/images/tg2.png",
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tiger Horizonia Size 42 - 43 - 45",
    price: 36.55,
    description:
        "Tiger Horizonia được thiết kế với kiểu dáng vừa cổ điển vừa hiện đại, các chi tiết được gia công tỉ mỉ với độ hoàn thiện cao tạo nên một tổng thể chất lượng cho đôi giày, rất đáng để trải nghiệm ",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/Tai.png",
      "assets/images/Tai2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tai-Chi NM “Black Tan” (1183A913.001)",
    price: 26.55,
    description:
        "Siêu phẩm Nippon Made (Made In Japan)",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wf.png",
      "assets/images/wf1.png",
      "assets/images/wf2.png",
      "assets/images/wf3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Waffle One Toasty “Rattan”",
    price: 65.56 ,
    description:
        "Size: 44 /n Cond: Used",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/mexi1.png",
      "assets/images/mexi2.png",
      "assets/images/mexi3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Mexico 66 SD",
    price: 45.12,
    description:
        "Mexico 66 SD(sample) chỉ có 1 đôi cực kì chất lượng Với phối màu OG siêu kinh điển của hãng: White/Directoire Blue (1183A872.113)",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/cv1.png",
      "assets/images/cv2.png",
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "70s Low “Tri-Panel Renew Pack",
    price: 15.23,
    description:
        "Giới thiệu tới các bạn một đôi Converes độc đáo với phần upper và mid sole là hoàn toàn làm bằng vải bố canvas rất chất lượng",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
     "assets/images/vs.png",
      "assets/images/vs1.png",
      "assets/images/vs2.png",
      "assets/images/vs3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Dụng cụ vệ sinh giày",
    price: 20.20 ,
    description:
        "Dụng cụ vệ sinh giày được sản xuất từ đức với các loại bọt khô giúp giày không hư /nvà cũng như là thơm giày ",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/BN.png",
      "assets/images/BN1.png",
      "assets/images/BN2.png",
    
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vớ nike brown - 1pack",
    price: 15.1,
    description:
        "Đây là đôi vớ được may dệt bởi vải cotton cùng với công nghệ may tiên tiến khiến cho nó trở neenco dãn linh hoạt và độ đàn hồi cao",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/jd.png",
      "assets/images/jd1.png",
      "assets/images/jd2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vòng tay thun Jordan và Nike",
    price: 8.2,
    description:
        "Đây là đôi vòng được may dệt bởi vải cotton cùng với công nghệ may tiên tiến khiến cho nó trở neenco dãn linh hoạt và độ đàn hồi cao",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
 
];
