import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_books_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: CustomTextField(),
        ),
        Expanded(child: SearchBooksListView()),
      ],
    );
  }
}
