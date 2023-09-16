import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/Features/search/presention/views/widgets/search_result_ListView.dart';
import 'package:my_bookly/core/utils/styles.dart';

import '../../../../home/data/presention/views/widegts/best_seller_list_view_item.dart';
import 'custom_search_TestField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTestField(),
          SizedBox(height: 18,),
          Text('Search Result',style: Styles.textStyle18,),
          SizedBox(height: 8,),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
