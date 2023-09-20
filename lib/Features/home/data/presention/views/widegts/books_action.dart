import 'package:flutter/material.dart';

import '../../../../../../constans/constants.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../models/BookModel.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final Items bookModel;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(child: CustomButton(
            text: '19.99€',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            topLeft: 12,
            bottomLeft: 12,

          )),
          Expanded(child: CustomButton(
            text: 'Free preview',
            backgroundColor: kButtonColor,
            textColor: Colors.white,
            topRight: 12,
            bottomRight: 12,
            fontSize: 18,

          )),
        ],
      ),
    );
  }
}