part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailure({required this.errorMessage});
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel> Books = [];
  FeaturedBooksSuccess({required this.Books});
}
