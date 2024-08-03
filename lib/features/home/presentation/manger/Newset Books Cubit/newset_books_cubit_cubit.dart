import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    print('Loading books...');
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      print('Error fetching books: ${failure.errMessage}');
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      print('Books fetched successfully');
      emit(NewsetBooksSuccess(books));
    });
  }
}
