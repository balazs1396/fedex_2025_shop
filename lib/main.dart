import 'package:fedex_2025_shop/app_container.dart';
import 'package:fedex_2025_shop/cart.dart';
import 'package:fedex_2025_shop/models/shop.dart';
import 'package:fedex_2025_shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Shop())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppContainer(),
      routes: {
        ShopScreen.route: (context) => ShopScreen(),
        CartScreen.route: (context) => CartScreen(),
      },
    );
  }
}
