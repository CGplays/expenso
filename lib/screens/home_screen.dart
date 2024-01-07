import 'package:expenso/constants/constants.dart';
import 'package:expenso/screens/add_expense.dart';
import 'package:expenso/widgets/home/home_daily_expense.dart';
import 'package:expenso/widgets/home/recent_expenses_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("normal appbar for now"),
        centerTitle: true,
      ),
      // appBar: const PreferredSize(
      //   preferredSize: Size(double.infinity, 240),
      //   child: CustomAppBar(),
      // ),
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
          // const Positioned(
          //   // right: 70,
          //   bottom: 20,
          //   child: BottomMenu(),
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddItem.routeName);
        },
        backgroundColor: Constants.kSecondaryColor,
        child: const Icon(
          FontAwesomeIcons.plus,
          size: 30,
          color: Constants.kTertiaryColor,
        ),
      ),
    );
  }
}
