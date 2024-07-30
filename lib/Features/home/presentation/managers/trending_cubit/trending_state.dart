import 'package:equatable/equatable.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';

abstract class TrendingState extends Equatable {
  const TrendingState();

  @override
  List<Object> get props => [];
}

class TrendingInitial extends TrendingState {}

class TrendingLoading extends TrendingState {}

class TrendingFailure extends TrendingState {
  final String errorMessage;

  const TrendingFailure({required this.errorMessage});
}

class TrendingSuccess extends TrendingState {
  final List<MovieModel> trendingList;

  const TrendingSuccess({required this.trendingList});
}
