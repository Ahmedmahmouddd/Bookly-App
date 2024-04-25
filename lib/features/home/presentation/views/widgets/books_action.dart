import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModelItem});

  final Item bookModelItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        children: [
          CustomButton(
              data: 'Free',
              style: Styles.textStyle21Bold.copyWith(color: Colors.black),
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(24)))),
          CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModelItem.volumeInfo!.previewLink!);
                if (await canLaunchUrl(url)) {
                 await launchUrl(url);
                }
              },
              data: 'Preview',
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
