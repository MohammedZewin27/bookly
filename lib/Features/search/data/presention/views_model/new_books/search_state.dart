part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
  final BookModel books;

  SearchSuccess({required this.books});
}
class SearchFailure extends SearchState {
  final String message;

  SearchFailure({required this.message});
}
