import 'package:flutter/material.dart';
import 'package:project/Core/utils/Widgets/custom_button.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:project/Features/home/presentation/views/widgets/books_action.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:project/Features/home/presentation/views/widgets/similar_box_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),

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
         SizedBox(height: 35,),
         Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text("You Can Also Like", style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),

          const SizedBox(height: 14,),
          const SimilarBooksListView(),
          const SizedBox(height: 14,),
          
        ],
      ),
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

        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}



