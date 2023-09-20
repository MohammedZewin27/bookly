import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/Features/home/data/presention/views/book_details_view.dart';
import 'package:my_bookly/Features/home/data/presention/views/home_view.dart';
import 'package:my_bookly/Features/home/data/presention/views_model/similar_books/similar_books_cubit.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:my_bookly/core/utils/service_locator.dart';

import '../../Features/search/presention/views/search_view.dart';
import '../../Features/splash/presention/views/splash_view.dart';

abstract class AppRouter{

 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: BookDetailsView.routeName,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child:   BookDetailsView(
            bookModel: state.extra as  Items,

          ),
        ),
      ),
      GoRoute(
        path: SearchView.routeName,
        builder: (context, state) => const SearchView(),
      ),




    ],
  );
}
