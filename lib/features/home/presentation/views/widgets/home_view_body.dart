// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/medium_title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
                CustomAppBar(
                  widget: Image.asset(AssetsData.logo, height: 24),
                  iconButton: IconButton(
                      onPressed: () {
                        GoRouter.of(context).push('/SearchView');
                      },
                      icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                          size: 24)),
                ),
                const FeaturedBooksListView(),
                const SizedBox(height: 30),
                MediumTitle(title: 'Newest Items'),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: NewestBooksListView()),
        ],
      ),
    );
  }
}
