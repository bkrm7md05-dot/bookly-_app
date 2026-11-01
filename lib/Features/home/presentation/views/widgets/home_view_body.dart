import 'package:flutter/material.dart';
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
         const [
          CustomAppBar(),
        

          FeaturedBooksListView(),

          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Best Seller ", style: TextStyle(),),
          )

          
         
         ]
         
         );
  }
}

