import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/managers/color/cupit.dart';
import 'package:movie_app/Features/home/presentation/managers/color/state.dart';
import 'package:movie_app/core/Utils/app_routers.dart';
import 'package:movie_app/core/Utils/bloc_providers/providers.dart';
import 'package:movie_app/core/Utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (context, _) {
        return multiBlocProvider(
            BlocBuilder<ColorCubit, ColorState>(builder: (context, state) {
          final colorCubit = context.read<ColorCubit>();
          return MaterialApp.router(
              routerConfig: AppRouters.router,
              debugShowCheckedModeBanner: false,
              theme:colorCubit.theme 
              );
        }));
      },
    );
  }
}
