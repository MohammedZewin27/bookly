import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo.dart';
import 'package:my_bookly/core/errors/failures.dart';
import 'package:my_bookly/core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, BookModel>> fetchNewSetBooks() async {
    print('fetchNewSetBooks-----------------------');
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=sports',
      );
      BookModel bookModel = BookModel.fromJson(data);
      print(bookModel.items?[0].selfLink);
      return right(bookModel);
    } on Exception catch (e) {
      return left(
        ServerFailure('ERROR-------------------------------- $e'),
      );
    }
  }

  @override
  Future<Either<Failure, BookModel>> fetchFeaturedBooks() async {
    print('fetchFeaturedBooks ---------------------');
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=Programming',
      );
      BookModel bookModel = BookModel.fromJson(data);
      // print(bookModel.items?[0].kind);

      return right(bookModel);
    } on Exception catch (e) {
      return left(
        ServerFailure('ERROR $e'),
      );
    }
  }
//https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=relevence&q=subject:Programming

  @override
  Future<Either<Failure, BookModel>> fetchSimilarBooks({required String category}) async {
    print('fetchSimilarBooks ---------------------');
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevence&q=$category',
      );
      BookModel bookModel = BookModel.fromJson(data);
      // print(bookModel.items?[0].kind);

      return right(bookModel);
    } on Exception catch (e) {
      return left(
        ServerFailure('ERROR $e'),
      );
    }
  }

}
