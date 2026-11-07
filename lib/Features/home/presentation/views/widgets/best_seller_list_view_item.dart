import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Core/utils/app_router.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Core/utils/service_locator.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/data/repos/homo_repo_impl.dart';
import 'package:project/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:project/Features/home/presentation/views/widgets/book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  final BookModel book;
  const BestSellerListViewItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book );
      },
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: CachedNetworkImage(
                  imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.fill,
                  // placeholder: (context, url) => ,
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
                      "${book.volumeInfo!.title}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text("${book.volumeInfo!.authors ?? "There's no author"}",
                      style: Styles.textStyle14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Free \$ ",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        avgRating: book.volumeInfo!.averageRating ?? 3,
                        ratingCount: book.volumeInfo!.ratingsCount ?? 7,
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
