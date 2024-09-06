import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myproducttile extends StatelessWidget {
  final products product;

  const Myproducttile({super.key, required this.product});
  void addButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text('Add this item to the cart?'),
              actions: [
                //cancel buttom
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),

                //confirm button
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);

                    context.read<Shop>().addToCart(product);
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: const EdgeInsets.all(20),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //product image path
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).colorScheme.secondary),
                  width: 200,
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(
                    product.imagepath,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //product name
              Text(
                product.name,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              //product description
              Text(
                product.description,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),

          //product price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.price.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20),
              ),

              //product add button
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.secondary),
                child: IconButton(
                  onPressed: () => addButton(context),
                  icon: const Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
