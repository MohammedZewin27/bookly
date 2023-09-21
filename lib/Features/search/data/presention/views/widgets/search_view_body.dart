import 'package:flutter/material.dart';
import 'package:my_bookly/Features/search/data/presention/views/widgets/search_result_ListView.dart';

import 'package:my_bookly/core/utils/styles.dart';


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
