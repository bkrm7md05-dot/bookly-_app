import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_appBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        CustomAppBar(),
        
      ],
    );
  }
}

