import 'package:e_commerce_app/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //list of products
  final List<products> _Shop = [
    products(
        name: 'Product 1',
        price: 99.99,
        description:
            ' Items description will be show here more details sabout the product will be mentioned here',
        imagepath: 'Assets/hoody.jpg'),
    products(
        name: 'Product 2',
        price: 99.99,
        description:
            ' Items description will be show here more details sabout the product will be mentioned here',
        imagepath: 'Assets/tshirt.png'),
    products(
        name: 'Product 3 ',
        price: 99.99,
        description:
            ' Items description will be show here more details sabout the product will be mentioned here',
        imagepath: 'Assets/shirt.webp'),
    products(
        name: 'Product 4 ',
        price: 99.99,
        description:
            ' Items description will be show here more details sabout the product will be mentioned here',
        imagepath: 'Assets/shoes.jpg'),
    products(
        name: 'Product 5',
        price: 99.99,
        description:
            ' Items description will be show here more details sabout the product will be mentioned here',
        imagepath: 'Assets/watch.jpg'),
  ];

  //user cart
  List<products> _cart = [];

  //get products list
  List<products> get shop => _Shop;

  //get user cart
  List<products> get cart => _cart;

  //add items to cart
  void addToCart(products item) {
    _cart.add(item);
  }

  //remove items from cart
  void removeFromCart(products item) {
    _cart.remove(item);
  }
}
