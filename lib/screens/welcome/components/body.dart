import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project1/constants.dart';
import 'package:test_project1/screens/sign_up/login/sign_up_screen.dart';
import '../../../components/rounded_button.dart';
import 'background.dart';
import 'package:test_project1/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "assets/images/logo.png",
              width: size.width * 0.3,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "LOBİTEK LTP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          RoundedButton(
            text: "LOGIN",
            color: kButtonColorBlue,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
            color: kButtonColorPink,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
