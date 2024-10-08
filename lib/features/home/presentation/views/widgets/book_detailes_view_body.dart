import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailesSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You also may like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 30.0),
//       child: Column(
//         children: [
//           const CustomBookDetailsAppBar(),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * .18),
//             child: const CustomBookImage(),
//           ),
//           const SizedBox(
//             height: 43,
//           ),
//           Text(
//             'The Jungle Book ',
//             style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           Text(
//             'Rudyard Kipling',
//             style: Styles.textStyle18
//                 .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
//           ),
//           const SizedBox(
//             height: 18,
//           ),
//           const BookRating(
//             mainAxisAlignment: MainAxisAlignment.center,
//           ),
//           const SizedBox(
//             height: 37,
//           ),
//           const BooksAction(),
//           const Expanded(
//             child: const SizedBox(
//               height: 50,
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'You also may like',
//               style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           const SimilarBooksListView(),
//           const SizedBox(
//             height: 40,
//           ),
//         ],
//       ),
//     );
//   }
// }
