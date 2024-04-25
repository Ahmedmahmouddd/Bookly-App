import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewSection extends StatelessWidget {
  const SimilarBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child:
                    Text('you can also like', style: Styles.textStyle21Bold))),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
          child: SimilarBooksListView(),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
