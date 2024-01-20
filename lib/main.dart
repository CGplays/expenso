import 'package:expenso/constants/constants.dart';
import 'package:expenso/models/item.dart';
import 'package:expenso/screens/add_expense.dart';
import 'package:expenso/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Items(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              foregroundColor: Constants.kHeadingTextColor,
              centerTitle: true,
              color: Constants.kPrimaryColor,
              titleTextStyle: GoogleFonts.spaceGrotesk(
                fontSize: 25,
                color: Constants.kHeadingTextColor,
                fontWeight: FontWeight.bold,
              )),
          textTheme: GoogleFonts.spaceGroteskTextTheme(),
          scaffoldBackgroundColor: Constants.kPrimaryColor,
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        routes: {
          AddItem.routeName: (ctx) => const AddItem(),
        },
      ),
    );
  }
}
