import 'package:fedex_2025_shop/models/product.dart';
import 'package:fedex_2025_shop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String route = '/cart';

  void removeItemFromCart({
    required BuildContext context,
    required Product product,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Remove this item to cart ?"),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);

              context.read<Shop>().removeFromCart(item: product);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  void onPay(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) =>
          const AlertDialog(content: Text("Thanks for your order")),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(title: const Text("Cart ")),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart, size: 120),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "Your Cart is Empty",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];

                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Image.asset(
                                  fit: BoxFit.fitWidth,
                                  item.imagePath,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          item.name,
                                          overflow: TextOverflow
                                              .ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\€ ${item.price.toStringAsFixed(2)}',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // Spacer(),
                            // Icon(Icons.remove),
                          ],
                        ),
                      );

                      /*return ListTile(
  
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            removeItemFromCart(context: context, product: item);
                          },
                        ),
                      );*/
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.orange[300],
              width: 500,

              child: IconButton(
                onPressed: () {
                  onPay(context);
                },
                icon: Icon(Icons.payment),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
