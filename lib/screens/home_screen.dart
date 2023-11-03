import 'package:expenso/constants/constants.dart';
import 'package:expenso/widgets/appbar.dart';
import 'package:expenso/widgets/bottom_menu.dart';
import 'package:expenso/widgets/home_daily_expense.dart';
import 'package:expenso/widgets/recent_expenses_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 240),
        child: CustomAppBar(),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Constants.kSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(offset: Offset(0, 4), blurRadius: 4)
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const HomeDailyExpense(),
                const SizedBox(
                  height: 40,
                ),
                const RecentExpensesHomes(),
              ],
            ),
          ),
          const Positioned(
            // right: 70,
            bottom: 20,
            child: BottomMenu(),
          )
        ],
      ),
    );
  }
}
