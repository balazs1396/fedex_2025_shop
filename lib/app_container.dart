import 'package:fedex_2025_shop/cart.dart';
import 'package:fedex_2025_shop/settings.dart';
import 'package:fedex_2025_shop/shop.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<StatefulWidget> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    ShopScreen(),
    CartScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.shop_sharp), label: 'Shop'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
