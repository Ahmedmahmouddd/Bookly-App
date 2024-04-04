// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:bookly/features/home/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/medium_title.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(),
          const FeaturedBookListView(),
          const SizedBox(height: 45),
          MediumTitle(
            title: 'Best Sellers',
          ),
        ],
      ),
    );
  }
}
