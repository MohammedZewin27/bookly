import 'package:flutter/material.dart';

import 'custom_book_details__appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CustomBookDetailsAppBar()
        ],
      ),
    );
  }
}

