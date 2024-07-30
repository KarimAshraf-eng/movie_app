import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedText2 extends StatefulWidget {
  const AnimatedText2({super.key});

  @override
  State<AnimatedText2> createState() => _AnimatedText2State();
}

class _AnimatedText2State extends State<AnimatedText2> {
  bool isVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 4000),
      opacity: isVisible ? 1.0 : 0.0,
      child: Text(
        "Explore a curated collection of short films across various genres, handpicked for\n your entertainment.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15.sp),
      ),
    );
  }

  void startTimer() {
    Timer(const Duration(milliseconds: 1500), () {
      setState(() {
        isVisible = true;
      });
    });
  }
}
