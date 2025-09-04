import 'package:fedex_2025_shop/cart.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});
  static String route = '/shop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fedex days 2025 - Shop'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.route);
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Center(child: const Text('This is the shop')),
    );
  }
}
