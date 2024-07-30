import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedText1 extends StatefulWidget {
  const AnimatedText1({super.key});

  @override
  State<AnimatedText1> createState() => _AnimatedText1State();
}

class _AnimatedText1State extends State<AnimatedText1> {
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
      duration: const Duration(milliseconds: 2000),
      opacity: isVisible ? 1.0 : 0.0,
      child: Text(
        'DISCOVER \nTHE MAGIC OF \nCLIIPS',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
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
