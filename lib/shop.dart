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
      appBar: AppBar(
        title: const Text('Fedex days 2025 - Shop'),),
      body: ListView(
        children: [
          SizedBox(
            height: Utils.getScreenHeight(context) * 0.025,
          ),
          Padding(
            padding:
                EdgeInsets.only(bottom: Utils.getScreenHeight(context) * 0.015),
            child: Center(
              child: Text(
                "Pick from a Selected list of premium products ",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
          ),
          ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SizedBox(
                height: Utils.getScreenHeight(context) * 0.68,
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                      horizontal: Utils.getScreenWidth(context) * 0.03,
                      vertical: Utils.getScreenWidth(context) * 0.005),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return MyProductTile(product: product);
                  },
                ),
              ))
        ],
      ),
    );
  }
}
