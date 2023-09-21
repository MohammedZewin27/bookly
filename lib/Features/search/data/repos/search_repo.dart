import 'package:dartz/dartz.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import 'package:my_bookly/core/errors/failures.dart';

abstract class SearchRepo {
 Future<Either<Failure,BookModel>> fetchBooksSearch({required String wordSearch});
}
