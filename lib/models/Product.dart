import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 1650,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley T-Shirts",
    price: 999,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem T-Shirts",
    price: 1800,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/Product_3.jpg",
    title: "Casual Nolin Shirts",
    price: 1490,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_5.png",
    title: "Jeans Black Pant",
    price: 1500,
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/p.png",
    title: "cotton Jeans Pant",
    price: 1400,
    bgColor: const Color(0xFFEEEEED),
  ),
];
