import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.grade,
          color: Color(0xffFFDD4F),
          size: 26,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating.round().toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count)'.toString(),
          style:
              Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.6)),
        ),
      ],
    );
  }
}
