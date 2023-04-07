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
import 'package:http/http.dart' as http;
import 'dart:convert';

String _mail = "";
String _password = "";
bool _loginSucces = false;

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
              "Login",
              style: TextStyle(
                fontSize: size.width * 0.035,
                color: kTextColor,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "Your Email Address",
              onChanged: (code) {
                _mail = code.toString();
              },
            ),
            RoundedPasswordField(
              onChanged: (code) {
                _password = code.toString();
              },
            ),
            SizedBox(height: size.height * 0.015),
            RoundedButton(
              width: size.width * 0.8,
              text: "LOGIN",
              press: () {
                _login(context);
              },
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
            ),
          ],
        ),
      ),
    );
  }
}

Future _login(context) async {
  var headers = {'Content-Type': 'application/json'};
  var request = http.Request(
      'POST', Uri.parse('http://192.168.1.150:7090/api/User/Login'));
  request.body = json.encode({"email": "${_mail}", "password": "${_password}"});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    if (await response.stream.bytesToString() == "true") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: kButtonColorPink,
              actionsAlignment: MainAxisAlignment.center,
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
              title: const Text("Kullanıcı Bilgilerinizi kontrol ediniz."),
              actions: [
                RoundedButton(
                  color: kPrimaryColor,
                  width: MediaQuery.of(context).size.width * 0.30,
                  text: "Ok",
                  press: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  } else {
    // ignore: avoid_print
    print(response.reasonPhrase);
  }
}
