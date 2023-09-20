part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {
  final BookModel books;

  SimilarBooksSuccess({required this.books});
}
class SimilarBooksFailure extends SimilarBooksState {
  final String message;

  SimilarBooksFailure({required this.message});
}