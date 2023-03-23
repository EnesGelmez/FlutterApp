import 'package:flutter/material.dart';
import 'package:test_project1/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kIconsColos,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kIconsColos,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
