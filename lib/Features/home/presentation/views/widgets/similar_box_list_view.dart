import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Core/utils/Widgets/custom_error_widget.dart';
import 'package:project/Core/utils/Widgets/custom_loading_indicator.dart';
import 'package:project/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: FeaturedListViewItem(
                    imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                        'http://books.google.com/books/content?id=s-IH_x6ytuQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
