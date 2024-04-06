import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, this.mainAxisAlignment= MainAxisAlignment.center});

  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment!,
        children: [
          const Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 18),
          const SizedBox(width: 6),
          const Text(
            '4.8',
            style: Styles.textStyle18Bold,
          ),
          const SizedBox(width: 3),
          Text(
            '(2406)',
            style: Styles.textStyle18Bold.copyWith(color: Colors.white54),
          )
        ],
      ),
    );
  }
}
