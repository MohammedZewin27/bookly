import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Features/home/data/presention/views/widegts/best_seller_list_view_item.dart';
import 'package:my_bookly/Features/home/data/presention/views_model/new_books/new_books_cubit.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksState>(
      builder: (context, state) {
        if (state is NewBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.items?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
               bookModel:state.books ,
                  index: index,
                ),
              );
            },
          );
        } else if (state is NewBooksFailure) {
          return CustomErrorWidget(message: state.message);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
