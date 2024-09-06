import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const Mybuttons({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}
