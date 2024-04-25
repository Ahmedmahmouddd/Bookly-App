import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly/features/home/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          widget: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                FontAwesomeIcons.xmark,
                size: 28,
              )),
          iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                size: 24,
              )),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const FeaturedBooksListViewItem(
              imageUrl:
                  'https://feb.kuleuven.be/drc/LEER/visiting-scholars-1/image-not-available.jpg/image',
            )),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Text(
            'TextBook title',
            textAlign: TextAlign.center,
            style: Styles.textStyle21Bold,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            'TextBook title ',
            textAlign: TextAlign.center,
            style: Styles.textStyle16SemiBold.copyWith(color: Colors.white54),
          ),
        ),
        const SizedBox(height: 4),
        //const BookRate(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
