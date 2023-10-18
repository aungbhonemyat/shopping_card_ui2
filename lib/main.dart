import 'package:flutter/material.dart';
import 'package:shop_card_ui2/pages/shopping_ui2_page.dart';
import 'package:shop_card_ui2/pages/shopping_ui2listview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home:ShoppingUi2ListPage(),
      home:ShoppingUi2Page(),

    );
  }
}

