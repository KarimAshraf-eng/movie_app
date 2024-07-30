import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/core/Utils/constants.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          SizedBox(
            width: 210.w,
            height: 50.h,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Text(
                "Play Now",
                style: TextStyle( fontSize: 20.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey, width: 2.w),
              ),
              child: FloatingActionButton(
                heroTag: "play",
                elevation: 0,
                onPressed: () {},
                backgroundColor: Colors.transparent,
                child: const Icon(
                  BoxIcons.bxs_cloud_download,
                  
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 2.w),
            ),
            child: FloatingActionButton(
              heroTag: "list",
              elevation: 0,
              onPressed: () {},
              backgroundColor: Colors.transparent,
              child: const Icon(
                Iconsax.share_outline,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
