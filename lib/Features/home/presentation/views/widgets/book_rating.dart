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
        Icon(Icons.star, color: Colors.amber, size: 10),
        SizedBox(width: 3),
        Text("2.7", style: Styles.textStyle16),
        SizedBox(width: 2),
        Text(
          "(245)",
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
