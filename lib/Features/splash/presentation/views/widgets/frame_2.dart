import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/Features/home/presentation/managers/color/cupit.dart';
import 'package:movie_app/Features/home/presentation/managers/color/state.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/parent_frame.dart';
import 'package:movie_app/core/Utils/constants.dart';

class Frame2 extends StatefulWidget {
  const Frame2({super.key});

  @override
  State<Frame2> createState() => _Frame2State();
}

class _Frame2State extends State<Frame2> {
  bool isVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(milliseconds: 1300), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(builder: (context, state) {
      final colorCubit = (context).read<ColorCubit>();
      return Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ParentFrame(
              scale: 3,
              offset_1: 0.01,
              offset_2: 0.13,
              right: 0,
              bottom: 0,
              left: 0,
              animation_1: 0,
              animation_2: -1,
              animation_3: 0,
              animation_4: 0,
            ),
            15.verticalSpace,
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: isVisible ? 1.0 : 0.0,
              child: Icon(
                logo,
                color: colorCubit.logoColor,
                size: 80,
              ),
            ),
          ],
        ),
      );
    });
  }
}
