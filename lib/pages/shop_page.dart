import 'package:e_commerce_app/components/My_drawer.dart';
import 'package:e_commerce_app/components/product_tile.dart';

import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    //acess products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Shop page')),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/Cartpage'),
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: const Mydrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Pick from a selected list of premium products',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 650,
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                //get each product from shop
                final product = products[index];

                //return the product tile
                return Myproducttile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
