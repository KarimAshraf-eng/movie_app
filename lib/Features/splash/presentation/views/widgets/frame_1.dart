import 'package:flutter/material.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/parent_frame.dart';

class Frame1 extends StatelessWidget {
  const Frame1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ParentFrame(
      scale: 4,
      offset_1: 0.25,
      offset_2: 0.13,
      right: 5,
      bottom: 0,
      left: 0,
      animation_1: 0,
      animation_2: 1,
      animation_3: 0,
      animation_4: 0,
    );
  }
}
