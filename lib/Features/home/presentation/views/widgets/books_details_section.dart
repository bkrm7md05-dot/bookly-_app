import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:project/Features/home/presentation/views/widgets/books_action.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .2,
          ),
          child: const FeaturedListViewItem(),
        ),
        const SizedBox(height: 30),

        const Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(height: 6),

        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        const SizedBox(height: 18),

        BookRating(mainAxisAlignment: MainAxisAlignment.center),

        const SizedBox(height: 24),
        const BooksAction(),
      ],
    );
  }
}
