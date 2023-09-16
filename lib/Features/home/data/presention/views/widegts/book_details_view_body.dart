import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_details%20_section.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_rating.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/custom_Book_image.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/similar_books_list_view.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/similar_books_section.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/core/utils/widgets/custom_button.dart';

import '../../../../../../constans/constants.dart';
import 'books_action.dart';
import 'custom_book_details__appBar.dart';
import 'custom_books_listView.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


