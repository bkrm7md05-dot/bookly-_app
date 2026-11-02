import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Core/utils/app_router.dart';
import 'package:project/Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 10,),
      child: Row(
        children: [
          Image.asset(clsAssets.logo, height: 20, width: 40,),
          Spacer(),
      
          IconButton(onPressed: ()
           
           {
            GoRouter.of(context).push(AppRouter.kSearchView);
          
           },
           icon: const Icon(Icons.search, size: 27,)
           
           ),
        ],
      ),
    );
  }
}
