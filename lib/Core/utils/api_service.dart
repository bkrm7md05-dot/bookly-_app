import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/volumes?key=AIzaSyA5Y7o72eJD9CdEmE7GE5_qa9Q0UeV3AU0&';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint})async {
    var response = await _dio.get('$_baseUrl$endPoint');

    return response.data;
  }



}
