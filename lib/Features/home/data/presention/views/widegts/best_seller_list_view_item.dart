import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/Features/home/data/presention/views/book_details_view.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_rating.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/custom_Book_image.dart';
import '../../../../../../constans/constants.dart';
import '../../../../../../core/utils/styles.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key, required this.bookModel, required this.index});

  final BookModel bookModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.routeName);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel
                        .items?[index].volumeInfo?.imageLinks?.smallThumbnail ??
                    ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.items?[index].volumeInfo?.title ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFineRegular),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.items?[index].volumeInfo?.authors?.first ?? '',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(
                        count:bookModel.items?[index].volumeInfo?.ratingsCount??0,
                        rating:bookModel.items?[index].volumeInfo?.averageRating??0 ,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


