import 'package:expenso/widgets/addItem/item_card.dart';
import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  static const routeName = "/add-item";
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 40,
        ),
        child: ListView(
          children: const [ItemCard()],
        ),
      ),
    );
  }
}
