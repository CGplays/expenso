import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Constants.kSecondaryColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(offset: Offset(1, 2), blurRadius: 1, spreadRadius: 1)
            ],
          ),
          height: 100,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?rs=1&pid=ImgDetMain",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.45),
              Colors.black.withOpacity(0.0),
            ]),
            // color: Constants.kSecondaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 100,
          width: double.infinity,
        )
      ],
    );
  }
}
