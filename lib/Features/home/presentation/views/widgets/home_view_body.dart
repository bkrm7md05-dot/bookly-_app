import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          [
          CustomAppBar(),
        

          FeaturedBooksListView(),

          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Best Seller ", style: Styles.textStyle18,),
          ),

          BestSellerListViewItem(),

          
         
         ]
         
         );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:120 ,
      child: Row(

        children: 
        [
          AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),

          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(clsAssets.book1Highlight),
          ),
        ),
      ),
    ),

        ],
      ),
    );
  }
}


