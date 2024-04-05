// ignore_for_file: must_be_immutable

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MediumTitle extends StatelessWidget {
  MediumTitle({
    required this.title,
    super.key,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: Styles.textStyle24Bold,
        ),
      ),
    );
  }
}
