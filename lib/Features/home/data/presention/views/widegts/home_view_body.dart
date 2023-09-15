import 'package:flutter/material.dart';
import 'package:my_bookly/constans/constants.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'custom_books_listView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 35,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
