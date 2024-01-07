import 'package:expenso/constants/constants.dart';
import 'package:expenso/widgets/home/recent_expenses_card.dart';
import 'package:flutter/material.dart';

class RecentExpensesHomes extends StatelessWidget {
  const RecentExpensesHomes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recent Expenses",
              style: TextStyle(
                color: Constants.kBodyTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: Constants.kTertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 20,
              width: 45,
              child: const Center(
                child: Text(
                  "More",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: HomeRecentCard(),
        ),
      ],
    );
  }
}
