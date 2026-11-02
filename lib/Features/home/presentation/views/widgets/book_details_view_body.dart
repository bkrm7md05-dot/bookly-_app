import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Core/utils/Widgets/custom_button.dart';
import 'package:project/Core/utils/app_router.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:project/Features/home/presentation/views/widgets/books_action.dart';
import 'package:project/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:project/Features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),

                const BooksDetailsSection(),

                const Expanded(child: SizedBox(height: 35)),

                const SimilarBooksSection(),
                const SizedBox(height: 14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),

        IconButton(
          onPressed: () {
            },
          icon: Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
