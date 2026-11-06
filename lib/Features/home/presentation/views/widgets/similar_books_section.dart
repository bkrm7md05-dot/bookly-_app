import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/similar_box_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You Can Also Like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 14),
        const SimilarBooksListView(),
      ],
    );
  }
}
