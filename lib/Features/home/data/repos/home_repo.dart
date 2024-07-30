import 'package:dartz/dartz.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/core/errors/failers.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<MovieModel>>> fetchUpcoming();
  Future<Either<Failure,List<MovieModel>>>featchTrending();
  Future<Either<Failure,List<MovieModel>>>featchHollywood();

}
