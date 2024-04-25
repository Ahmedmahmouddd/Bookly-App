import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookModelItem});

  final Item bookModelItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BooksDetailsView', extra: bookModelItem);
      },
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: AspectRatio(
              aspectRatio: 3.2 / 4,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                        imageUrl:
                            bookModelItem.volumeInfo?.imageLinks?.thumbnail ??
                                'assets/images/no_image.jpg',
                        fit: BoxFit.fill,
                        placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                        errorWidget: (context, url, error) => const Image(
                              image: AssetImage(
                                'assets/images/no_image.jpg',
                              ),
                              fit: BoxFit.fill,
                            )),
                  )),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(bookModelItem.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18Bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                      bookModelItem.volumeInfo?.authors?[0] ?? 'Unkown author',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle16SemiBold
                          .copyWith(color: Colors.white54)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Free', style: Styles.textStyle18Bold),
                    BookRate(
                      count: bookModelItem.volumeInfo!.pageCount!,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
