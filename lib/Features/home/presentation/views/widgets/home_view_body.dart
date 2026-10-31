import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
       [
          CustomAppBar(),
        

          FeaturedBooksListView(),

          
         
         ]
         
         );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height * 0.25 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
            child:  FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
