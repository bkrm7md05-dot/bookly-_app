import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2/3.6,
      child: Container(
        
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          
          image:const  DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(clsAssets.book1Highlight)),
        ),
      ),
    );
  }
}
