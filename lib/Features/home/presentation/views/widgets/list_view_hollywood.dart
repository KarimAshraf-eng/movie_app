import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/managers/hollywood_cubit/hollywood_cubit.dart';
import 'package:movie_app/Features/home/presentation/managers/hollywood_cubit/hollywood_state.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/hollywod.dart';
import 'package:movie_app/core/widgets/custom_erro_widget.dart';
import 'package:movie_app/core/widgets/custom_loading_indicator.dart';

class ListViewHollywood extends StatelessWidget {
  const ListViewHollywood({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HollywoodCubit, HollywoodState>(
      builder: (context, state) {
        if (state is HollywoodSuccess) {
          return SizedBox(
            height: 190.h,
            width: 125.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.hollywoodList.length,
              itemBuilder: (context, index) {
                return Hollywod(
                  movieModel: state.hollywoodList[index],
                );
              },
            ),
          );
        } else if (state is HollywoodFailure) {
          return CustomErroWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator(w: 125, h: 190,);
        }
      },
    );
  }
}
