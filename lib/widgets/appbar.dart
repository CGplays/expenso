import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      curve: Curves.easeInOutCubic,
      height: 260,
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
        mainAxisAlignment: MainAxisAlignment.end,
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
              radius: 45,
              backgroundColor: Constants.kTertiaryColor,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Constants.kPrimaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: Constants.kbaseSpacing * 5,
          ),
          Text(
            'Hi/Welcome Back,\n[name]',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Constants.kHeadingTextColor,
              shadows: [
                Shadow(
                    offset: const Offset(2, 5),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.5))
              ],
              fontSize: 30,
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: 1.60,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
