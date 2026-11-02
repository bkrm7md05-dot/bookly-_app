import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     // shrinkWrap: true,
      slivers: 
      const [
         SliverToBoxAdapter(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CustomAppBar(),
    
         FeaturedBooksListView(),
    
         SizedBox(height: 50),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Best Seller ", style: Styles.textStyle18),
        ),
    
         
      ],
    ),
        ),

        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     
      physics: const NeverScrollableScrollPhysics(),
      
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
