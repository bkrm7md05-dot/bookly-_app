import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25 ,
 
      child: AspectRatio(
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
      ),
    );
  }
}
