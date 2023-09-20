import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/book_details_view_body.dart';
import 'package:my_bookly/Features/home/data/presention/views_model/similar_books/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  static const String routeName = '/BookDetailsView';
  final Items bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailsViewBody(bookModel: widget.bookModel,)),
    );
  }
}
