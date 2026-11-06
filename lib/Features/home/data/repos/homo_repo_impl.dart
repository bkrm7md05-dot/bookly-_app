import 'package:dartz/dartz.dart';
import 'package:project/Core/errors/failure.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/data/repos/home_repo.dart';

class HomoRepoImpl implements HomeRepo
{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBox() {
    
    // TODO: implement fetchBestSellerBox
    throw UnimplementedError();
  }

  @override
  Future<Either<dynamic, dynamic>> fetchFeaturedBox() {
    // TODO: implement fetchFeaturedBox
    throw UnimplementedError();
  }}