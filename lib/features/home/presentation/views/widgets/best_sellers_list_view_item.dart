import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rate.dart';
import 'package:flutter/material.dart';

class BestSellersListViewItem extends StatelessWidget {
  const BestSellersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                      image: AssetImage('assets/images/test_image.png'),
                    )))))),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text('Harry potter and the gloabl fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18Bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text('Author',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle16SemiBold
                        .copyWith(color: Colors.white54)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('99.99\$', style: Styles.textStyle18Bold),
                  BookRate(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
