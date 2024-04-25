import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModelItem,
  });

  final Item bookModelItem;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  BookDetailsSection(
                    bookModelItem: bookModelItem,
                  ),
                  const SizedBox(height: 16),
                  BooksAction(
                    bookModelItem: bookModelItem,
                  ),
                  const SimilarBooksListViewSection()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
