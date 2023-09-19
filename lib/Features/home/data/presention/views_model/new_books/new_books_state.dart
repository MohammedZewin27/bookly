part of 'new_books_cubit.dart';

@immutable
abstract class NewBooksState {}

class NewBooksInitial extends NewBooksState {}
class NewBooksLoading extends NewBooksState {}
class NewBooksSuccess extends NewBooksState {
  final BookModel books;

  NewBooksSuccess({required this.books});
}
class NewBooksFailure extends NewBooksState {
  final String message;

  NewBooksFailure({required this.message});
}
