import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';

class FeaturedListViewItem extends StatelessWidget {
  final String imageUrl;
  const FeaturedListViewItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 3.6,
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),

          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage( imageUrl),
          ),
        ),
      ),
    );
  }
}
