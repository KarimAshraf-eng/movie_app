import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://api.themoviedb.org/3/movie/";
  final _apiKey = "?api_key=bb1267ee9b8434afd69589e6dfb25453";
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint$_apiKey");
    return response.data;
  }
}
