// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:bookly/features/home/presentation/views/widgets/best_sellers_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/medium_title.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBar(),
                const FeaturedBooksListView(),
                const SizedBox(height: 30),
                MediumTitle(title: 'Best Sellers'),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: BestSellersListView()),
        ],
      ),
    );
  }
}
