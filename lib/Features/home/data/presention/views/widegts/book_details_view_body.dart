import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_rating.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/custom_Book_image.dart';
import 'package:my_bookly/core/utils/styles.dart';

import 'custom_book_details__appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(

        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.22),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43,),
          const Text('The Jungle Book',style: Styles.textStyle30,),
          const SizedBox(height: 6,),
           Opacity(
             opacity: .7,
             child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,

          ),),
           ),
          const SizedBox(height: 18,),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        ],
      ),
    );
  }
}
