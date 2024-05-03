import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailesSection extends StatelessWidget {
  const BooksDetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomBookImage(
            imageURl:
                'https://th.bing.com/th/id/R.75743fa23b0d7290a423862d3c34f76b?rik=Rw7Rq9poX%2f89TQ&riu=http%3a%2f%2fimages.unsplash.com%2fphoto-1590523278191-995cbcda646b%3fixlib%3drb-1.2.1%26q%3d80%26fm%3djpg%26crop%3dentropy%26cs%3dtinysrgb%26w%3d1080%26fit%3dmax%26ixid%3deyJhcHBfaWQiOjEyMDd9&ehk=Nhds%2fiJghhi7s0gtqsMc9Xh64znF2FqCxLo1GPcJHrU%3d&risl=&pid=ImgRaw&r=0',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book ',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18
              .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
