import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:movie_app/Features/home/presentation/managers/color/cupit.dart';
import 'package:movie_app/Features/home/presentation/managers/color/state.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/list_view_drawer.dart';
import 'package:movie_app/core/Utils/app_routers.dart';
import 'package:movie_app/core/Utils/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit,ColorState>
    (
      builder: (context,state){
        final coloCubit = (context).read<ColorCubit>();
        return
        Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: IconButton(
            onPressed: () {},
            icon: const Icon(
              logo,
              size: 40,
            ),
            color: coloCubit.logoColor,
          ),
          actions: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouters.searchView);
              },
              icon: const Icon(
                FontAwesome.searchengin_brand,
                size: 30,
              ),
            )
          ],
        ),
        body: const HomeViewBody(),
        drawer:  Drawer(
          backgroundColor: coloCubit.color,
          surfaceTintColor: Colors.blue,
          child: const ListViewDrawer()
        ),
    );
      },
    );
  }
}
