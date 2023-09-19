part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final BookModel books;

  FeaturedBooksSuccess({required this.books});
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;

  FeaturedBooksFailure({required this.message});
}
