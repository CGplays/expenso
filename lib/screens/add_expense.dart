import 'package:expenso/constants/constants.dart';
import 'package:expenso/models/item.dart';
import 'package:expenso/widgets/addItem/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddItem extends StatefulWidget {
  static const routeName = "/add-item";
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    List<Item> items = Provider.of<Items>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20,
          top: 20,
        ),
        child: ListView(children: [
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return ItemCard(items[i]);
            },
            itemCount: items.length,
          ),
          const Center(
            child: Text(
              "We couldn't find anything else. :)",
              style: TextStyle(color: Constants.ksubtitleTextColor),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
