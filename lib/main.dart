import 'package:fedex_2025_shop/shop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopScreen(),
      routes: {
        ShopScreen.route: (context) => ShopScreen(),
      },
    );
  }
}