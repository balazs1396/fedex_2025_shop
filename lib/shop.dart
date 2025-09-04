import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  static String route = '/shop_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fedex days 2025 - Shop'),),
      body: Center(
        child: const Text('This is the shop'),
      ),
    );
  }
}
