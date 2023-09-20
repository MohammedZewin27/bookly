import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_rating.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/books_action.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/custom_Book_image.dart';

import '../../../../../../core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25),
          child:  CustomBookImage(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAGbzrhpTi4Q0o5o0JSRVDSZ6zifJth2yxXYg26zgW&s'),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),

      ],
    );
  }
}