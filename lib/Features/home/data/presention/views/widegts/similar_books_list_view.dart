import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/custom_Book_image.dart';
import 'package:my_bookly/Features/home/data/presention/views_model/similar_books/similar_books_cubit.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.items?.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                      imageUrl:state.books.items?[index].volumeInfo?.imageLinks?.smallThumbnail??''
                  ),
                );
              },
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorWidget(message: state.message);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
