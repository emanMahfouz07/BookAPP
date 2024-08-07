import 'package:bookly/core/utils/Widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    imageURl:
                        'https://th.bing.com/th/id/R.75743fa23b0d7290a423862d3c34f76b?rik=Rw7Rq9poX%2f89TQ&riu=http%3a%2f%2fimages.unsplash.com%2fphoto-1590523278191-995cbcda646b%3fixlib%3drb-1.2.1%26q%3d80%26fm%3djpg%26crop%3dentropy%26cs%3dtinysrgb%26w%3d1080%26fit%3dmax%26ixid%3deyJhcHBfaWQiOjEyMDd9&ehk=Nhds%2fiJghhi7s0gtqsMc9Xh64znF2FqCxLo1GPcJHrU%3d&risl=&pid=ImgRaw&r=0',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksCubitFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
