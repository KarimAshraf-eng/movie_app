import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            movieModel.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              const Icon(
                BoxIcons.bxs_calendar,
                
              ),
              5.horizontalSpace,
              Text(
                "${movieModel.releaseDate}, 06:00 PM .",
                style: TextStyle(color: Colors.grey, fontSize: 17.sp),
              ),
              const Icon(
                Icons.watch_later,
                
              ),
              5.horizontalSpace,
              Text(
                "2H 45M",
                style: TextStyle(color: Colors.grey, fontSize: 17.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
