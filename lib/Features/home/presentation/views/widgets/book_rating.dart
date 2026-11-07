import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';

class BookRating extends StatelessWidget {
  MainAxisAlignment mainAxisAlignment;
  final int avgRating, ratingCount;
  BookRating({required this.avgRating, required this.ratingCount, super.key, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        SizedBox(width: 6.3),
        Text("${avgRating}", style: Styles.textStyle16),
        SizedBox(width: 5),
        Text(
          "(${ratingCount})  ",
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
