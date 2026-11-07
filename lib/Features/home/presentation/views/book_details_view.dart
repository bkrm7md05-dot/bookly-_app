import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:project/Features/home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState

    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(widget.book.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: BookDetailsViewBody()));
  }
}
