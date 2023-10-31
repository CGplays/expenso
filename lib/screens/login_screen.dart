import 'package:expenso/constants/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("[App-name]"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2), spreadRadius: 2, blurRadius: 3),
                ],
              ),
              child: const CircleAvatar(
                radius: 45,
                backgroundColor: Constants.kTertiaryColor,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Constants.kPrimaryColor,
                ),
              ),
            ),
            // TODO: Finish it up later
          ],
        ),
      ),
    );
  }
}
