import 'package:flutter/material.dart';
import 'package:my_bookly/Features/search/presention/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
static const String routeName='/SearchView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody(),
      ),
    );
  }
}
