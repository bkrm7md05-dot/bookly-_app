import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),

        CustomListViewItem(),
       
      ],
    );
  }
}

