import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project1/constants.dart';
import 'package:test_project1/screens/login/login_screen.dart';
import 'package:test_project1/screens/welcome/welcome_screen.dart';
import '../../../../components/already_have_an_account_check.dart';
import '../../../../components/rounded_button.dart';
import '../../../../components/rounded_input_field.dart';
import '../../../../components/rounded_password_field.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "assets/images/logo.png",
                width: size.width * 0.25,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "LOBİTEK LTP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.06,
                color: kTextColor,
              ),
            ),
            SizedBox(height: size.height * 0.009),
            Text(
              "Sing Up",
              style: TextStyle(
                fontSize: size.width * 0.035,
                color: kTextColor,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "Your Email Address",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Name",
              icon: Icons.text_format,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Surname",
              icon: Icons.text_format,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.015),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
              color: kButtonColorPink,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              login: false,
            ),
            OrDivider()
          ],
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDriver(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              "OR",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600),
            ),
          ),
          buildDriver(),
        ],
      ),
    );
  }

  Expanded buildDriver() {
    return Expanded(
      child: Divider(
        height: 9,
      ),
    );
  }
}
