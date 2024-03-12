import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/splash/presentation/views/widgets/best_seller_listView_item.dart';
import 'package:bookly/features/splash/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/splash/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 51,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
           SizedBox(
            height: 30,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
