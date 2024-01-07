import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeRecentCard extends StatelessWidget {
  const HomeRecentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Constants.kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(offset: Offset(0, 3), blurRadius: 3)],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1,000 Rs.",
                        style: TextStyle(
                          color: Constants.kBodyTextColor,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          height: 0,
                          letterSpacing: 0.42,
                        ),
                      ),
                      Text(
                        "15th Jan, 2023",
                        style: TextStyle(
                          color: Constants.ksubtitleTextColor,
                          fontSize: 13,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Icon(
              FontAwesomeIcons.chevronRight,
              color: Constants.kTertiaryColor,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
