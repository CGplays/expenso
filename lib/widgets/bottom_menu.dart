import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  bool isExtended = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: Constants.kSecondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 50,
        width: !isExtended ? 50 : double.maxFinite,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOutCubic,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => isExtended = !isExtended,
                icon: const Icon(
                  FontAwesomeIcons.plus,
                  color: Constants.kTertiaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
