import "package:expenso/constants/constants.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpenseCardDaily extends StatelessWidget {
  const ExpenseCardDaily({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // TODO: Add ListView(Note: it gives errors :(  )
      children: [
        Container(
          height: 60,
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
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Constants.kTertiaryColor,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Constants.kPrimaryColor,
                      ),
                    ),
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
                            "Chips",
                            style: TextStyle(
                              color: Constants.kBodyTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 0,
                              letterSpacing: 0.42,
                            ),
                          ),
                          Text(
                            "Rs. 20",
                            style: TextStyle(
                              color: Constants.ksubtitleTextColor,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Icon(
                  FontAwesomeIcons.solidCircleXmark,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
