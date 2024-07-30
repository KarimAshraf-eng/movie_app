import 'package:flutter/material.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/list_view_part_1.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/list_view_part_2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/list_view_part_3.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: ListViewPart1(),
        ),
        SliverToBoxAdapter(
          child: 20.verticalSpace,
        ),
        const SliverToBoxAdapter(
          child: ListViewPart2(),
        ),
        SliverToBoxAdapter(
          child: 20.verticalSpace,
        ),
        const SliverToBoxAdapter(
          child: ListViewPart3(),
        )
      ],
    );
  }
}
