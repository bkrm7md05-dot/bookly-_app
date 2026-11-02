import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

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
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .2),
            child: const FeaturedListViewItem(),
          ),
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
