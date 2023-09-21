import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/Features/search/repos/search_repo.dart';
import 'package:my_bookly/core/errors/failures.dart';
import 'package:my_bookly/core/utils/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, BookModel>> fetchBooksSearch(
      {required String wordSearch}) async {
    try {
      var json = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevence&q=subject:$wordSearch');
      BookModel bookModel = BookModel.fromJson(json);
      return right(bookModel);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
