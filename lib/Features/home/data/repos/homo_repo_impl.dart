import 'package:dartz/dartz.dart';
import 'package:project/Core/errors/failure.dart';
import 'package:project/Core/utils/api_service.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/data/repos/home_repo.dart';

class HomoRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomoRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBox() async {
    // TODO: implement fetchBestSellerBox

    try {
      var data = await apiService.get(
        endPoint: 'q=Programming&Sorting=newest&filter=free-ebooks',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<dynamic, dynamic>> fetchFeaturedBox() {
    // TODO: implement fetchFeaturedBox
    throw UnimplementedError();
  }
}
