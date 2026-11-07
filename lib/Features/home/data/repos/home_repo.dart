import 'package:dartz/dartz.dart';
import 'package:project/Core/errors/failure.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';

abstract class HomeRepo 
{
  
  Future<Either<Failure ,List<BookModel> >> fetchNewsBooks();
  
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

}
