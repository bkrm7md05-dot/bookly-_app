import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:project/Core/errors/failure.dart';
import 'package:project/Core/utils/api_service.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/data/repos/home_repo.dart';

class HomoRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomoRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    // TODO: implement fetchBestSellerBooks

    try {
      var data = await apiService.get(
        endPoint: 'q=Programming&Sorting=newest&filter=free-ebooks',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } 
        return left(ServerFailure(e.toString()));
      
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    // TODO: implement fetchFeaturedBooks
    List<BookModel> books = [];
    try {
      var data = await apiService.get(
        endPoint: 'q=Programming&Sorting=newest&filter=free-ebooks',
      );
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
          return left(ServerFailure.fromDioException(e));
      
        
      }
      return left(ServerFailure(e.toString()));
     
      // TODO
    }
  }
}
