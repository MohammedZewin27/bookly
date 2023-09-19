import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../models/BookModel.dart';
import '../../../repos/home_repo.dart';
part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.homeRepo) : super(NewBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewBooks() async {
    emit(NewBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((l) {
      emit(NewBooksFailure(message: l.errorMessage));
    }, (r) {
      emit(
        NewBooksSuccess(books: r),
      );
    });
  }
}
