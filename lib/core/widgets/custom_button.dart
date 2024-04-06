import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.shape,
      this.style,
      required this.data,
      this.backgroundColor});
  final OutlinedBorder? shape;
  final TextStyle? style;
  final String data;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: shape, backgroundColor: backgroundColor),
          onPressed: () {},
          child: Text(
            data,
            style: style,
          ),
        ),
      ),
    );
  }
}
