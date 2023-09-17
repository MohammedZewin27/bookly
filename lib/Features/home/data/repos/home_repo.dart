import 'package:dartz/dartz.dart';
import 'package:my_bookly/Features/home/data/models/BookModel.dart';
import '../../../../core/errors/failures.dart';
abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}