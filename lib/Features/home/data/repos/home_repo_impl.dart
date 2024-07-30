import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/Features/home/data/repos/home_repo.dart';
import 'package:movie_app/core/Utils/api_service.dart';
import 'package:movie_app/core/errors/failers.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<MovieModel>>> featchHollywood() async {
    try {
      var data = await apiService.get(endPoint: "popular");

      List<MovieModel> movies = [];
      for (var movie in data["results"]) {
        movies.add(MovieModel.fromJson(movie));
      }
      return Right(movies);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> featchTrending() async {
    try {
      var data = await apiService.get(endPoint: "top_rated");

      List<MovieModel> movies = [];
      for (var movie in data["results"]) {
        movies.add(MovieModel.fromJson(movie));
      }
      return Right(movies);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchUpcoming() async {
    try {
      var data = await apiService.get(endPoint: "upcoming");

      List<MovieModel> movies = [];
      for (var movie in data["results"]) {
        movies.add(MovieModel.fromJson(movie));
      }
      return Right(movies);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
