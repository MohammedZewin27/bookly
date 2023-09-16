import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/data/presention/views/book_details_view.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_rating.dart';

import '../../../../../../constans/constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

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
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.cyanAccent,
                  image: const DecorationImage(
                    image: AssetImage(Assets.imagesTestImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:  Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                          fontFamily: kGTSectraFineRegular
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const Text('J.K. Rowling',style: Styles.textStyle14,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99 €',style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),),
                      const Spacer(),
                      const BookRating(),
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



