import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_list_view_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  BookDetailsSection(),
                  SizedBox(height: 16),
                  BooksAction(),
                  Expanded(child: SizedBox(height: 24)),
                  BooksDetailsListViewSection()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
