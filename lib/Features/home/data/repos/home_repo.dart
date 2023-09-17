import 'package:dartz/dartz.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import '../../../../core/errors/failures.dart';
abstract class HomeRepo{
 Future<Either<Failure,BookModel>> fetchNewSetBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}