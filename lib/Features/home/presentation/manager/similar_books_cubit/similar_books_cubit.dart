import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/data/repos/homo_repo_impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homoRepoImpl})
      : super(SimilarBooksInitial());

  HomoRepoImpl homoRepoImpl;

  Future<void> fetchSimilarBooks(String category) async {
    emit(SimilarBooksLoading());
    var result = await homoRepoImpl.fetchSimilarBooks(Category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
