part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksCubitInitial extends SimilarBooksState {}

final class SimilarBooksCubitLoading extends SimilarBooksState {}

final class SimilarBooksCubitSuccess extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksCubitSuccess(this.books);
}

final class SimilarBooksCubitFailure extends SimilarBooksState {
  final String errMessage;

  SimilarBooksCubitFailure(this.errMessage);
}
