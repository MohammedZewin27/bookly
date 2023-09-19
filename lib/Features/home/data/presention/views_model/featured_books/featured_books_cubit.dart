import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/BookModel.dart';
import '../../../repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchNewSetBooks();
    result.fold((l) {
      emit(FeaturedBooksFailure(message: l.errorMessage));
    }, (r) {
      emit(
        FeaturedBooksSuccess(books: r),
      );
    });
  }
}
