import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    //remove button
    void removeItem(BuildContext context, product) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: const Text('Remove this item from cart?'),
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
                      setState(() {
                        context.read<Shop>().removeFromCart(product);
                      });
                    },
                    child: const Text('Confirm'),
                  ),
                ],
              ));
    }

    //get the access to view thw cart part and the list of the products we added

    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cart page')),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              final item = cart[index];

              //returning the list tile

              return ListTile(
                leading: Image.asset(
                  item.imagepath,
                  height: 90,
                  width: 80,
                ),
                title: Text(item.name),
                subtitle: Text(
                  item.price.toStringAsFixed(2),
                ),
                trailing: IconButton(
                    onPressed: () => removeItem(context, item),
                    icon: const Icon(Icons.remove)),
              );
            },
          ))
        ],
      ),
    );
  }
}
