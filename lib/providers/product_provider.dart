import 'dart:io';

import 'package:crud/models/product.dart';
import 'package:crud/services/product_service.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier {
  final ProductService _productService = ProductService();
  List<Product> _products = [];

  List<Product> get products => _products;

  ProductProvider() {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    _productService.getProducts().listen((products) {
      _products = products.reversed.toList();
      notifyListeners();
    });
  }

  Future<void> addProduct(Product product, File? imageFile) async {
    await _productService.addProduct(product, imageFile);
    notifyListeners();
  }

  Future<void> updateProduct(Product product, File? imageFile) async {
    await _productService.updateProduct(product, imageFile);
    notifyListeners();
  }

  Future<void> deleteProduct(String productId) async {
    await _productService.deleteProduct(productId);
    notifyListeners();
  }
}