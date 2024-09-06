import 'package:e_commerce_app/models/shop.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/intro_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:e_commerce_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Intropage(),
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      routes: {
        '/intropage': (context) => const Intropage(),
        '/Shoppage': (context) => const Shoppage(),
        '/Cartpage': (context) => const Cartpage(),
      },
    );
  }
}
