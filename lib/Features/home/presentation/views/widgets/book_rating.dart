import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';

class BookRating extends StatelessWidget {
  MainAxisAlignment mainAxisAlignment;
  BookRating({super.key, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 20),
        SizedBox(width: 6.3),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(width: 5),

        Text(
          "(245)  ",
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
