import 'package:fedex_2025_shop/data/products.dart';
import 'package:fedex_2025_shop/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {

  //user cart
  List<Product> _cart = [];

//get products list
  List<Product> get shop => products;
//get user cart
  List<Product> get cart => _cart;

// add item to cart
  void addToCart({required Product item}) {
    _cart.add(item);
    notifyListeners();
  }

// remove  item from cart
  void removeFromCart({required Product item}) {
    _cart.remove(item);
    notifyListeners();
  }
}