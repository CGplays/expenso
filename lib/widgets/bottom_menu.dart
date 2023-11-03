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
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Constants.kSecondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 50,
        width: !isExtended ? 50 : MediaQuery.of(context).size.width - 40,
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOutCubic,
        child: Expanded(
          // clipBehavior: Clip.hardEdge,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // if (isExtended)
              IconButton(
                onPressed: () => setState(() {
                  isExtended = !isExtended;
                }),
                icon: const Icon(
                  FontAwesomeIcons.dollarSign,
                  color: Constants.kTertiaryColor,
                ),
              ),
              // if (isExtended)
              IconButton(
                onPressed: () => setState(() {
                  isExtended = !isExtended;
                }),
                icon: const Icon(
                  FontAwesomeIcons.chartBar,
                  color: Constants.kTertiaryColor,
                ),
              ),
              IconButton(
                onPressed: () => setState(() {
                  isExtended = !isExtended;
                }),
                icon: const Icon(
                  FontAwesomeIcons.plus,
                  color: Constants.kTertiaryColor,
                ),
              ),
              // if (isExtended)
              IconButton(
                onPressed: () => setState(() {
                  isExtended = !isExtended;
                }),
                icon: const Icon(
                  FontAwesomeIcons.clockRotateLeft,
                  color: Constants.kTertiaryColor,
                ),
              ),
              // if (isExtended)
              IconButton(
                onPressed: () => setState(() {
                  isExtended = !isExtended;
                }),
                icon: const Icon(
                  FontAwesomeIcons.gear,
                  color: Constants.kTertiaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
