import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  static const String routeName = '/BookDetailsView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
