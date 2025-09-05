import 'package:fedex_2025_shop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final darkTheme = context.watch<Shop>().darkTheme;

    return Scaffold(
      appBar: AppBar(title: Text('Setings')),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Column(children: [Text('Dark theme:')]),
              Switch(
                value: darkTheme,
                onChanged: (bool theme) {
                  setState(() {
                    context.read<Shop>().setTheme(theme);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
