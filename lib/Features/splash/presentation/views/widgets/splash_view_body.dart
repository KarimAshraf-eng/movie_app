import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/animated_text_1.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/animated_text_2.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/frame_1.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/frame_2.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/frame_3.dart';
import 'package:movie_app/core/Utils/app_routers.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Frame1(),
              Frame2(),
              Frame3(),
            ],
          ),
        ),
        AnimatedText1(),
        AnimatedText2(),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        GoRouter.of(context).pushReplacement(AppRouters.homeView);
        // Get.off(() => const HomeView(),
        //     transition: Transition.circularReveal,
        //     duration: const Duration(milliseconds: 2000));
      },
    );
  }
}
