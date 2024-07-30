import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/managers/trending_cubit/trending_cubit.dart';
import 'package:movie_app/Features/home/presentation/managers/trending_cubit/trending_state.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/trending.dart';
import 'package:movie_app/core/widgets/custom_erro_widget.dart';
import 'package:movie_app/core/widgets/custom_loading_indicator.dart';

class ListViewTrending extends StatelessWidget {
  const ListViewTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingCubit, TrendingState>(
      builder: (context, state) {
        if (state is TrendingSuccess) {
          return SizedBox(
            height: 190.h,
            width: 125.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.trendingList.length,
              itemBuilder: (context, index) {
                return Trending(movieModel: state.trendingList[index],
                );
              },
            ),
          );
        } else if (state is TrendingFailure) {
          return CustomErroWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator(w: 125, h: 190,);
        }
      },
    );
  }
}
