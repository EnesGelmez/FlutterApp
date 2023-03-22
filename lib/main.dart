import 'package:flutter/material.dart';
import 'package:test_project1/screens/welcome/welcome_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Plant App',
  //       theme: ThemeData(
  //           colorScheme:
  //               const ColorScheme.light().copyWith(primary: kPrimaryColor),
  //           scaffoldBackgroundColor: kBackgroundColor,
  //           textTheme:
  //               Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
  //       home: const HomeScreen());
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Plant Auth',
        theme: ThemeData(
            colorScheme:
                const ColorScheme.light().copyWith(primary: kPrimaryColor),
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
        home: const WelcomeScreen());
  }
}
