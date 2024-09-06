import 'package:e_commerce_app/components/My_buttons.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logoo
            Icon(
              Icons.shopping_bag,
              size: 90,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 2,
            ),

            // subtititle

            const Text(
              'Myntra',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const Text(
              'Premium Quality Products',
            ),
            const SizedBox(
              height: 20,
            ),

            // button
            Mybuttons(
                onTap: () => Navigator.pushNamed(context, '/Shoppage'),
                child: Icon(
                  Icons.arrow_right_alt,
                  size: 40,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ))
          ],
        ),
      ),
    );
  }
}
