import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/managers/upcoming_cubit/upcoming_cubit.dart';
import 'package:movie_app/Features/home/presentation/managers/upcoming_cubit/upcoming_state.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/List_view_upcoming.dart';

class ListViewPart1 extends StatelessWidget {
  const ListViewPart1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingCubit, UpcomingState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                "Upcoming Trailers",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            10.verticalSpace,
            const ListViewUpcoming()
          ],
        );
      },
    );
  }
}
