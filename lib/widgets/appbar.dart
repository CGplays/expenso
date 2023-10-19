import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        color: Constants.kSecondaryColor,
        boxShadow: [
          BoxShadow(
              blurRadius: 4,
              offset: const Offset(1, 4),
              color: Colors.black.withOpacity(0.50))
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: const Offset(1, 4),
                color: Colors.black.withOpacity(0.50),
                // spreadRadius: 2,
                blurRadius: 3,
              )
            ], borderRadius: BorderRadius.circular(50)),
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Constants.kTeriaryColor,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Constants.kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
