import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_sellers_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellersListView extends StatelessWidget {
  const BestSellersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return BestSellersListViewItem(
              bookModelItem: state.books[index] ,
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return Center(child: CustomErrorWidget(errMessage: state.errMessage));
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
