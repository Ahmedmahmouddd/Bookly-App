import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_list_view.dart';
import 'package:flutter/material.dart';

class BooksDetailsListViewSection extends StatelessWidget {
  const BooksDetailsListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child:
                    Text('you can also like', style: Styles.textStyle21Bold))),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 16),
          child: BooksDetailsListView(),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
