import 'package:flutter/material.dart';
import 'package:movie_app/Features/splash/presentation/views/widgets/parent_frame.dart';

class Frame3 extends StatelessWidget {
  const Frame3({super.key});

  @override
  Widget build(BuildContext context) {
    return const ParentFrame(
      scale: 4.4,
      offset_1: -0.24,
      offset_2: 0.14,
      right: 0,
      bottom: 0,
      left: 5,
      animation_1: 0,
      animation_2: 1,
      animation_3: 0,
      animation_4: 0,
    );
  }
}
