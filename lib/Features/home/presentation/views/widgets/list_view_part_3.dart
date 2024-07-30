import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/views/widgets/list_view_hollywood.dart';

class ListViewPart3 extends StatelessWidget {
  const ListViewPart3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            "Hollywood",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
        const ListViewHollywood()
      ],
    );
  }
}
