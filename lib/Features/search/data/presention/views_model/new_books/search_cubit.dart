import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_bookly/Features/search/data/repos/search_repo.dart';

import '../../../../../home/data/models/BookModel.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepo}) : super(SearchInitial());

  final SearchRepo searchRepo;

  void searchBooks({required String wordSearch}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchBooksSearch(wordSearch: wordSearch);
    result.fold((failure) {
      emit(SearchFailure(message: failure.errorMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
