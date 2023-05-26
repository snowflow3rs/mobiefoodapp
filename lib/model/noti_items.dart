import 'package:flutter/material.dart';

import 'package:flutter_project/model/product_items.dart';

class Noti {
  final Product product;
  final String message;
  final String description;
  final String date;
  final String time;
  Noti(
      {required this.product,
      required this.message,
      required this.description,
      required this.date,
      required this.time});
}

// Demo data for our cart

List<Noti> demoNotis = [
  Noti(
      product: demoProducts[0],
      message: "Message 1",
      description: "Welcome to the app",
      date: "5/24/2023",
      time: "5 PM"),
  Noti(
      product: demoProducts[1],
      message: "Message 2",
      description: "New Product are coming soon...",
      date: "5/25/2023",
      time: "8 AM"),
  Noti(
      product: demoProducts[2],
      message: "Message 3",
      description: "New Event coming soon",
      date: "5/26/2023",
      time: "9 AM"),
];
