import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
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
        children: [
          const SizedBox(
            height: 40,
          ),
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
          ),
          const SizedBox(
            height: Constants.kbaseSpacing * 5,
          ),
          Text(
            'Hi/Welcome Back,\n[name]',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Constants.kBodyTextColor,
              shadows: [
                Shadow(
                    offset: const Offset(2, 5),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.5))
              ],
              fontSize: 32,
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
