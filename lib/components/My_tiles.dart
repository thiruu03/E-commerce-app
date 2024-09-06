import 'package:flutter/material.dart';

class Mytiles extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const Mytiles(
      {super.key, required this.icon, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, top: 8, bottom: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
          size: 30,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
