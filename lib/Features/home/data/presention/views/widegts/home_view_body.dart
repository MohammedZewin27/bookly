import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/generated/assets.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        FeatureBooksListView()


      ],
    );
  }
}

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:(context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: FeaturedListViewItem(),
        );
      }, ),
    );
  }
}


