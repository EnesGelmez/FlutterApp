import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project1/constants.dart';
import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WOLCOME TO MY APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          RoundedButton(
            text: "LOGIN",
            color: kButtonColor,
            press: () {},
          ),
          RoundedButton(
            text: "REGISTER",
            press: () {},
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
