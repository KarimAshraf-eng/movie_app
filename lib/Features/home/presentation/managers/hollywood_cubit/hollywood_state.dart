import 'package:equatable/equatable.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';

abstract class HollywoodState extends Equatable {
  const HollywoodState();

  @override
  List<Object> get props => [];
}

class HollywoodInitial extends HollywoodState {}

class HollywoodLoading extends HollywoodState {}

class HollywoodFailure extends HollywoodState {
  final String errorMessage;

  const HollywoodFailure({required this.errorMessage});
}

class HollywoodSuccess extends HollywoodState {
  final List<MovieModel> hollywoodList;

  const HollywoodSuccess({required this.hollywoodList,});
}
