import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Row(
        children: [
          Image.asset(clsAssets.logo, height: 20, width: 40,),
          Spacer(),
      
          IconButton(onPressed: () {},
           icon: const Icon(Icons.search, size: 27,)
           
           ),
        ],
      ),
    );
  }
}
