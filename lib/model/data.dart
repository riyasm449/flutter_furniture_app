import 'package:flutter/material.dart';

class Product {
  final String name;
  final List<String> images;
  final num price;
  final String description;
  final String tdimg;

  Product(
      {@required this.name,
      @required this.images,
      @required this.price,
      @required this.description,
      @required this.tdimg});
}

List<Product> productList = [
  Product(
      name: "Child Table",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "child_table.sfb"),
  Product(
      name: "Chaise Classic",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "chaise_classique.sfb"),
  Product(
      name: "School Desk",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "clean_old_school_desk.sfb"),
  Product(
      name: "Leather Chair",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "leather_chair.sfb"),
  Product(
      name: "Sofa",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "sofa.sfb"),
  Product(
      name: "Table",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "table.sfb"),
];
