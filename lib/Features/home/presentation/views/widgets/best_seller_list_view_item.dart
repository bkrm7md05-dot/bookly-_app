import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Core/utils/app_router.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: 20),

            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),

                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(clsAssets.book1Highlight),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter and the Globet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18,
                    ),
                  ),

                  const SizedBox(height: 3),
                  Text("J.K Rowling ", style: Styles.textStyle14),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "19.99 \$ ",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
