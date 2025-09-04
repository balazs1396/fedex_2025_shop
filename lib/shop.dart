import 'package:fedex_2025_shop/data/products.dart';
import 'package:fedex_2025_shop/utils/scroller.dart';
import 'package:fedex_2025_shop/utils/utils.dart';
import 'package:fedex_2025_shop/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});
  static String route = '/shop';

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fedex days 2025 - Shop')),
      body: ListView(
        children: [
          SizedBox(height: Utils.getScreenHeight(context) * 0.025),
          ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: SizedBox(
              height: Utils.getScreenHeight(context) * 0.6,
              child: ListView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return MyProductTile(product: products[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
