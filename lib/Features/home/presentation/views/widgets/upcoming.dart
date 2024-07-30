import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/core/Utils/app_routers.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouters.homeDetailsView,extra: movieModel);
            },
            child: CachedNetworkImage(
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              width: 280.h,
              fit: BoxFit.fill,
              imageUrl: "http://image.tmdb.org/t/p/original${movieModel.posterPath}",
              errorWidget: (context, url, error) => const Image(
                  image: NetworkImage(
                      "https://tmpfiles.nohat.cc/nohat_bg_removed_e0318fb2.png")),
            ),
          ),
        ));
  }
}
