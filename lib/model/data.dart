class ProductList {
  List<Product> product;

  ProductList({this.product});

  ProductList.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = new List<Product>();
      json['product'].forEach((v) {
        product.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String name;
  List images;
  int price;
  String description;
  String tdimg;

  Product({this.name, this.images, this.price, this.description, this.tdimg});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    images = json['images'];
    price = json['price'];
    description = json['description'];
    tdimg = json['tdimg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['images'] = this.images;
    data['price'] = this.price;
    data['description'] = this.description;
    data['tdimg'] = this.tdimg;
    return data;
  }
}

// import 'package:flutter/material.dart';
//
// class Product {
//   final String name;
//   final List<String> images;
//   final num price;
//   final String description;
//   final String tdimg;
//
//   Product(
//       {@required this.name,
//       @required this.images,
//       @required this.price,
//       @required this.description,
//       @required this.tdimg});
// }
//
ProductList productList = ProductList(product: [
  Product(
      name: "Leather Chair",
      images: [
        "https://www.artisanti.com/ekmps/shops/artisanti/images/calgary-tan-faux-leather-dining-chair-with-arms-149666-p.jpg"
      ],
      price: 30000,
      description: "",
      tdimg: "leather_chair"),
  Product(
      name: "Sofa",
      images: ["https://i.pinimg.com/474x/19/84/b3/1984b38a05cba9becb4bf8fdb201fe88--dfs-sofa-small-corner.jpg"],
      price: 3000,
      description: "",
      tdimg: "sofa"),
  Product(
      name: "Table",
      images: ["https://5.imimg.com/data5/JC/UL/YL/SELLER-70427874/wooden-table-250x250.jpg"],
      price: 300,
      description: "",
      tdimg: "table"),
  Product(
      name: "Child Table",
      images: ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
      price: 300,
      description: "",
      tdimg: "child_table"),
  Product(
      name: "Computer Chair",
      images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-CwjCAcmC_SAvo5r6yHXQu4KBGdhi0yaM4Q&usqp=CAU"],
      price: 300,
      description: "",
      tdimg: "chaise_classique"),
  Product(
      name: "Computer Desk",
      images: ["https://wfh.transteel.com/wp-content/uploads/2020/05/ISO-2.jpg"],
      price: 300,
      description: "",
      tdimg: "clean_old_school_desk"),
]);
//
// Map map = {
//   "products": [
//     {
//       "name": "Child Table",
//       "images": ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
//       "price": 300,
//       "description": "",
//       "tdimg": "child_table.sfb"
//     },
//     {
//       "name": "Chaise Classic",
//       "images": ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
//       "price": 300,
//       "description": "",
//       "tdimg": "chaise_classique.sfb"
//     },
//     {
//       "name": "School Desk",
//       "images": ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
//       "price": 300,
//       "description": "",
//       "tdimg": "clean_old_school_desk.sfb"
//     },
//     {
//       "name": "Sofa",
//       "images": ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
//       "price": 300,
//       "description": "",
//       "tdimg": "sofa.sfb"
//     },
//     {
//       "name": "Leather Chair",
//       "images": ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
//       "price": 300,
//       "description": "",
//       "tdimg": "leather_chair.sfb"
//     },
//     {
//       "name": "Table",
//       "images": ["https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_500x500.png"],
//       "price": 300,
//       "description": "",
//       "tdimg": "table.sfb"
//     }
//   ]
// };
