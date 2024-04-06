// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: BuildOutLineInputBorder(),
          focusedBorder: BuildOutLineInputBorder(),
          hintText: 'Search Book',
          suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white.withOpacity(0.7),
              ))),
    );
  }

  OutlineInputBorder BuildOutLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}
