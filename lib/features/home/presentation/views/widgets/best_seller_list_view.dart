import 'package:bookly/core/utils/Widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/Newset%20Books%20Cubit/newset_books_cubit_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listView_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            // shrinkWrap: true, // didn't use it cause no need to build all the widgets at the same time
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
