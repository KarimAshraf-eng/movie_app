import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/managers/upcoming_cubit/upcoming_cubit.dart';
import 'package:movie_app/Features/home/presentation/managers/upcoming_cubit/upcoming_state.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/upcoming.dart';
import 'package:movie_app/core/widgets/custom_erro_widget.dart';
import 'package:movie_app/core/widgets/custom_loading_indicator.dart';

class ListViewUpcoming extends StatelessWidget {
  const ListViewUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingCubit, UpcomingState>(
      builder: (context, state) {
        if (state is UpcomingSuccess) {
          return SizedBox(
            height: 369.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.upcomingList.length,
              itemBuilder: (context, index) {
                return Upcoming(
                  movieModel:state.upcomingList[index]
                );
              },
            ),
          );
        } else if (state is UpcomingFailure) {
          return CustomErroWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator(w: 280, h: 369,);
        }
      },
    );
  }
}
