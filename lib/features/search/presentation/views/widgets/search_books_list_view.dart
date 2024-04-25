import 'package:flutter/material.dart';

class SearchBooksListView extends StatelessWidget {
  const SearchBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 6,
      itemBuilder: (context, index) {
        //return const BestSellersListViewItem();
        return const Text('data');
      },
    );
  }
}
