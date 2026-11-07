import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Core/errors/failure.dart';
import 'package:project/Core/utils/Widgets/custom_error_widget.dart';
import 'package:project/Core/utils/Widgets/custom_loading_indicator.dart';
import 'package:project/Core/utils/styles.dart';
import 'package:project/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:project/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:project/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:project/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      // shrinkWrap: true,
      slivers: const [
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
        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}

