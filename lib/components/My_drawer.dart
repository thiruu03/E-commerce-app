import 'package:e_commerce_app/components/My_tiles.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 90,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //Shop tile

              Mytiles(
                  icon: (Icons.home),
                  onTap: () {
                    //pop drawer first
                    Navigator.pop(context);
                  },
                  text: 'Home'),

              //cart tile
              Mytiles(
                  icon: Icons.shopping_cart,
                  onTap: () {
                    //pop drawer first
                    Navigator.pop(context);

                    //go to the cart page
                    Navigator.pushNamed(context, '/Cartpage');
                  },
                  text: 'Cart'),

              //Settngs page
              Mytiles(
                  icon: Icons.contact_support,
                  onTap: () {
                    //pop drawer first
                    Navigator.pop(context);
                  },
                  text: 'Contact'),

              //cart tile
              Mytiles(
                  icon: Icons.info,
                  onTap: () {
                    //pop drawer first
                    Navigator.pop(context);
                  },
                  text: 'About'),
            ],
          ),

          //exit tile

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Mytiles(
                icon: Icons.exit_to_app,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/intropage', (route) => false),
                text: 'exit'),
          ),
        ],
      ),
    );
  }
}
