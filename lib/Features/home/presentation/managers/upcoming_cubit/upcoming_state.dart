import 'package:equatable/equatable.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';

abstract class UpcomingState extends Equatable {
  const UpcomingState();

  @override
  List<Object> get props => [];
}

class UpcomingInitial extends UpcomingState {}

class UpcomingLoading extends UpcomingState {}

class UpcomingFailure extends UpcomingState {
  final String errorMessage;

  const UpcomingFailure({required this.errorMessage});
}

class UpcomingSuccess extends UpcomingState {
  final List<MovieModel> upcomingList;

  const UpcomingSuccess({required this.upcomingList});
}
