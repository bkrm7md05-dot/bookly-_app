import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Core/utils/Widgets/custom_error_widget.dart';
import 'package:project/Core/utils/Widgets/custom_loading_indicator.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:project/Features/home/presentation/views/widgets/featured_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          List<BookModel> books = state.Books;

          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: FeaturedListViewItem(imageUrl:  books[index].volumeInfo!.imageLinks!.thumbnail! ?? 'http://books.google.com/books/content?id=s-IH_x6ytuQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api'),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return  CustomLoadingIndicator();
        }
      },
    );
  }
}
