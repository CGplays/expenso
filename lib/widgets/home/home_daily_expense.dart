import 'package:expenso/constants/constants.dart';
import 'package:expenso/widgets/home/home_daily_expense_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDailyExpense extends StatelessWidget {
  const HomeDailyExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Today's Expense",
              style: TextStyle(
                color: Constants.kBodyTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              FontAwesomeIcons.circleChevronDown,
              color: Constants.kTertiaryColor,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: ExpenseCardDaily(),
        )
      ],
    );
  }
}
