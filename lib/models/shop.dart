import 'package:fedex_2025_shop/data/products.dart';
import 'package:fedex_2025_shop/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {

  List<Product> _cart = [];
  bool _darkTheme = false;

  List<Product> get shop => products;

  List<Product> get cart => _cart;

  bool get darkTheme => _darkTheme;

  void addToCart({required Product item}) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart({required Product item}) {
    _cart.remove(item);
    notifyListeners();
  }

  void setTheme(bool theme) {
    _darkTheme = theme;
    notifyListeners();
  }
}