import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:project/Features/search/presentation/views/Widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        CustomSearchTextField(),

        SizedBox(height: 10),

        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("   Search Results ", style: Styles.textStyle18),
        ),
        SizedBox(height: 10),

        Expanded(child: SearchResultListView()),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
         // child: BestSellerListViewItem(),
        );
      },
    );
  }
}
