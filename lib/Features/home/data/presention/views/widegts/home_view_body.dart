import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'custom_books_listView.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          const SizedBox(height: 35,),
          Text('Best Seller',style: Styles.titleMedium,)


        ],
      ),
    );
  }
}
