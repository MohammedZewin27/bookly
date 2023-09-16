import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/data/presention/views/book_details_view.dart';
import 'package:my_bookly/Features/home/data/presention/views/home_view.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: SearchView.routeName,
        builder: (context, state) => const SearchView(),
      ),




    ],
  );
}
