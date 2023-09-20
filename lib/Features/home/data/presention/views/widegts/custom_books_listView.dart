import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/data/presention/views/book_details_view.dart';
import 'package:my_bookly/Features/home/data/presention/views_model/featured_books/featured_books_cubit.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';

import 'custom_Book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              // clipBehavior: Clip.none,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.items?.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(BookDetailsView.routeName,extra:  state.books.items?[index]
                        ,);
                    },
                    child: CustomBookImage(
                        imageUrl: state.books.items![index].volumeInfo?.imageLinks
                                ?.smallThumbnail ??
                            ''),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return const CustomErrorWidget(message: 'state.');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

