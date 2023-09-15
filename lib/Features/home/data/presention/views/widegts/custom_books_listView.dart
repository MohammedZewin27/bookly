import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

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