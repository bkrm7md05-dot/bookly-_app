import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(' Bad certificate with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode,
          dioException.response,
        );
      case DioExceptionType.cancel:
        return ServerFailure(' Request with ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(' Connection error');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection ');
        }
        return ServerFailure('Unexcepected error ApiServer');

      case DioExceptionType.transformTimeout:
        return ServerFailure(' Transform Timeout with ApiServer');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response!.data['error']['message']);
    } else if (response!.statusCode == 404) {
      return ServerFailure('Your request not found, Please try later! ');
    } else if (response!.statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later! ');
    } else {
      return ServerFailure('Opps Thee was an Error, Please try later! ');
    }
  }
}
