import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: [
          CustomButton(
              data: '19.99\$',
              style: Styles.textStyle21Bold.copyWith(color: Colors.black),
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(24)))),
          CustomButton(
              data: 'Free Preview',
              style: Styles.textStyle21Bold.copyWith(color: Colors.white),
              backgroundColor: Colors.orange,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomRight: Radius.circular(24))))
        ],
      ),
    );
  }
}
