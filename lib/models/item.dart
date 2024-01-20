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
  final List<Item> _items = [
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
    Item(
      name: "Pizza",
      price: 50,
      description: "A delish treat",
      imageUrl:
          "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
    ),
  ];

  List<Item> get items {
    return [..._items];
  }
}
