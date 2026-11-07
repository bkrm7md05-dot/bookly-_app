import 'package:flutter/material.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: FeaturedListViewItem(imageUrl: 'http://books.google.com/books/content?id=s-IH_x6ytuQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',)  ,
            

          );
        },
      ),
    );
  }
}
