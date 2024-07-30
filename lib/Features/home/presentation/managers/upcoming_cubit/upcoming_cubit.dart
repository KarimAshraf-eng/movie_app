import 'package:bloc/bloc.dart';
import 'package:movie_app/Features/home/data/repos/home_repo.dart';
import 'package:movie_app/Features/home/presentation/managers/upcoming_cubit/upcoming_state.dart';

class UpcomingCubit extends Cubit<UpcomingState> {
  UpcomingCubit(this.homeRepo) : super(UpcomingInitial());

  final HomeRepo homeRepo;

  Future<void> fetchUpcoming() async {
    emit(UpcomingLoading());
    var result = await homeRepo.fetchUpcoming();
    result.fold(
      (failure) {
        emit(UpcomingFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(UpcomingSuccess(upcomingList: movies));
      },
    );
  }
}
