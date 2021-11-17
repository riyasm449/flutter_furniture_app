import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learn_ar_flutter/model/data.dart';

class ProductProvider extends ChangeNotifier {
  ProductList _productList;
  ProductList get productList => _productList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Dio dio = Dio(BaseOptions(baseUrl: "https://mocki.io/v1/0a206b1c-f225-4a5e-97a2-1a6e778da096"));

  void getData() async {
    _isLoading = true;
    notifyListeners();
    var data = await dio.get("");
    _productList = ProductList.fromJson(data.data);
    _isLoading = false;
    notifyListeners();
  }
}
