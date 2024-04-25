import 'package:bloc/bloc.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) => emit(NewsetBooksFailure(failure.errMessage)),
        (books) => emit(NewsetBooksSuccess(books)));
  }
}
