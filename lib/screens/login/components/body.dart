import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project1/constants.dart';
import 'package:test_project1/screens/welcome/welcome_screen.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../components/text_field_container.dart';
import '../../sign_up/login/sign_up_screen.dart';
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
                width: size.width * 0.3,
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
              "Login",
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
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.015),
            RoundedButton(
              text: "LOGIN",
              press: () {},
              color: kButtonColorPink,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              login: true,
            )
          ],
        ),
      ),
    );
  }
}
