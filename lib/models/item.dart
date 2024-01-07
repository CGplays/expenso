import 'package:flutter/material.dart';

class Item {
  final String name;
  final String description;
  final double price;
  final String? imageUrl;

  Item({
    required this.name,
    this.description = "",
    required this.price,
    this.imageUrl,
  });
}

class Items extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items {
    return [..._items];
  }
}
