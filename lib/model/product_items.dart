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
        "Bánh mì kẹp thịt là một món ăn nhanh phổ biến bao gồm một miếng thịt xay nấu chín, thường là thịt bò, được phục vụ trong một chiếc bánh mì cắt lát. Đó là một ... món ăn cổ điển của Mỹ đã trở thành món ăn chủ yếu được yêu thích trên khắp thế giới. Bánh mì kẹp thịt được biết đến với sự kết hợp thơm ngon giữa hương vị và kết cấu, với thịt ngon ngọt, phô mai tan chảy và nhiều loại đồ ăn kèm như rau diếp, cà chua, hành tây, dưa chua và các loại gia vị như sốt cà chua và mù tạt. Chúng có thể được tùy chỉnh để phù hợp với sở thích cá nhân và các tùy chọn như bánh mì kẹp thịt chay hoặc bánh mì kẹp thịt gà cũng có sẵn cho những người thích các lựa chọn thay thế cho thịt bò. Dù được thưởng thức tại nhà hàng, xe bán đồ ăn hay tự làm, bánh mì kẹp thịt đều là sự lựa chọn hài lòng và tiện lợi cho một bữa ăn ngon miệng.",
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
        "Pizza rau củ là một biến thể thơm ngon và bổ dưỡng của món pizza cổ điển. Nó có lớp vỏ mỏng hoặc dày bên trên là nhiều loại rau tươi và nhiều màu sắc. Các loại rau phổ biến bao gồm ớt chuông, hành tây, nấm, cà chua, rau bina, ô liu, và đôi khi cả ngô hoặc bông cải xanh. Những lớp phủ rực rỡ này không chỉ làm tăng thêm hương vị mà còn cung cấp nhiều loại vitamin, khoáng chất và chất xơ. Bánh pizza rau củ là một lựa chọn phổ biến cho những người đang tìm kiếm một lựa chọn lành mạnh hơn hoặc cho những người ăn chay và thuần chay đang tìm kiếm một lựa chọn thay thế không có thịt. Nó mang đến sự kết hợp hài lòng giữa hương vị thơm ngon và hương vị nhẹ nhàng, sảng khoái hơn so với các loại bánh pizza khác. Dù thưởng thức tại tiệm bánh pizza hay làm tại nhà, pizza rau củ là sự lựa chọn thú vị cho những tín đồ pizza thích vị ngon của rau củ.",
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
        "Với một hương thơm tươi mát và màu sắc tươi sáng, nước cam ép là một thức uống tuyệt vời để làm mới và bổ sung năng lượng cho cơ thể. Khi bạn thưởng thức nước cam ép, bạn sẽ cảm nhận được vị chua ngọt tự nhiên của quả cam tươi, mang lại cảm giác tươi mới và sảng khoái. Nước cam ép không chỉ là một nguồn cung cấp vitamin C và chất chống oxy hóa, mà còn có lợi cho hệ tiêu hóa và hệ thống miễn dịch. Thưởng thức một ly nước cam ép tươi ngon, bạn sẽ cảm nhận được sự tươi mới và sự phục hồi cho cơ thể",
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
        "Bánh kem tráng miệng là một món ăn thú vị được làm bằng các lớp ẩm và mịn, được phủ đầy và phủ nhiều hương vị và phủ sương khác nhau. Đó là một lựa chọn phổ biến cho các lễ kỷ niệm và những dịp đặc biệt, mang đến nhiều hương vị và vị ngọt không thể cưỡng lại.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];
