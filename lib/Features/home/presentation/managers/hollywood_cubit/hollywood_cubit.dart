import 'package:bloc/bloc.dart';
import 'package:movie_app/Features/home/data/repos/home_repo.dart';
import 'package:movie_app/Features/home/presentation/managers/hollywood_cubit/hollywood_state.dart';

class HollywoodCubit extends Cubit<HollywoodState> {
  HollywoodCubit(this.homeRepo) : super(HollywoodInitial());

  final HomeRepo homeRepo;

  Future<void> fetchHollywood() async {
    emit(HollywoodLoading());
    var result = await homeRepo.featchHollywood();
    result.fold(
      (failure) {
        emit(HollywoodFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(HollywoodSuccess(hollywoodList: movies));
      },
    );
  }
}
