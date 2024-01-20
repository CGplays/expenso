import 'package:expenso/constants/constants.dart';
import 'package:expenso/models/item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  final Item product;
  const ItemCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Constants.kSecondaryColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(offset: Offset(1, 2), blurRadius: 1, spreadRadius: 1)
              ],
            ),
            height: 80,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                product.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(1),
                // Colors.black.withOpacity(0.45),
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.8),
              ]),
              // color: Constants.kSecondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          color: Constants.kBodyTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            // "",
                            product.price.toString(),
                            style: GoogleFonts.spaceMono(
                                color: Constants.kHeadingTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    FontAwesomeIcons.plus,
                    color: Constants.kTertiaryColor,
                    size: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
