import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_rating.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/books_action.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/custom_Book_image.dart';

import '../../../../../../core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final Items bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25),
          child:  CustomBookImage(imageUrl:bookModel.volumeInfo?.imageLinks?.smallThumbnail??''),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
          bookModel.volumeInfo?.title ?? '',
          style: Styles.textStyle30,
           textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo?.authors?.first ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
           count:bookModel.volumeInfo?.ratingsCount??0,
           rating:bookModel.volumeInfo?.averageRating??0 ,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(bookModel: bookModel),

      ],
    );
  }
}