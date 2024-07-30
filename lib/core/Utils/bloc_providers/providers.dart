import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:movie_app/Features/home/presentation/managers/color/cupit.dart';
import 'package:movie_app/Features/home/presentation/managers/hollywood_cubit/hollywood_cubit.dart';
import 'package:movie_app/Features/home/presentation/managers/trending_cubit/trending_cubit.dart';
import 'package:movie_app/Features/home/presentation/managers/upcoming_cubit/upcoming_cubit.dart';
import 'package:movie_app/core/Utils/service_locator.dart';


Widget multiBlocProvider (var ch){
    return MultiBlocProvider(
  providers: [
    BlocProvider(
        create: (context) => UpcomingCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchUpcoming()),
    BlocProvider(
        create: (context) => TrendingCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchTrending()),
    BlocProvider(
        create: (context) => HollywoodCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchHollywood()),
    BlocProvider(
      create: (context)=>ColorCubit(),
      ),
  ], child: ch
);
}