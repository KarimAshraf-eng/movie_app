import 'package:bloc/bloc.dart';
import 'package:movie_app/Features/home/data/repos/home_repo.dart';
import 'package:movie_app/Features/home/presentation/managers/trending_cubit/trending_state.dart';

class TrendingCubit extends Cubit<TrendingState> {
  TrendingCubit(this.homeRepo) : super(TrendingInitial());

  final HomeRepo homeRepo;

  Future<void> fetchTrending() async {
    emit(TrendingLoading());
    var result = await homeRepo.featchTrending();
    result.fold(
      (failure) {
        emit(TrendingFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(TrendingSuccess(trendingList: movies));
      },
    );
  }
}
