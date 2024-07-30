import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/core/Utils/app_routers.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          height: 400.h,
          width: double.infinity,
          child: ShaderMask(
            shaderCallback: (x) {
              return LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.transparent.withOpacity(0.01),
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                ],
              ).createShader(x);
            },
            blendMode: BlendMode.dstIn,
            child: CachedNetworkImage(
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
              imageUrl: "http://image.tmdb.org/t/p/original${movieModel.posterPath}",
              errorWidget: (context, url, error) => const Image(
                  image: NetworkImage(
                      "https://tmpfiles.nohat.cc/nohat_bg_removed_e0318fb2.png")),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 110.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Text(
                  "IMDB 6.8",
                  style: TextStyle( fontSize: 20.sp),
                ),
              ),
              10.horizontalSpace,
              const Icon(
                BoxIcons.bxs_star,
                color: Color(0xfff0be07),
                size: 30,
              ),
              10.horizontalSpace,
              Text(
                movieModel.voteAverage.toString(),
                style:
                    TextStyle(color: const Color(0xfff0be07), fontSize: 20.sp),
              ),
              10.horizontalSpace,
              Text(
                "(${movieModel.popularity!.toInt().toString()} k reviews)",
                style: TextStyle( fontSize: 15.sp),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 320.h, left: 10.w, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    ),
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop(AppRouters.homeDetailsView);
                  },
                  icon: const Icon(BoxIcons.bxs_chevron_left,
                      size: 35),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined,
                       size: 35),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
