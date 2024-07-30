import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentFrame extends StatefulWidget {
  final double scale;
  final double offset_1;
  final double offset_2;
  final double right;
  final double bottom;
  final double left;
  final double animation_1;
  final double animation_2;
  final double animation_3;
  final double animation_4;
  const ParentFrame(
      {super.key,
      required this.scale,
      required this.offset_1,
      required this.offset_2,
      required this.right,
      required this.bottom,
      required this.left,
      required this.animation_1,
      required this.animation_2,
      required this.animation_3,
      required this.animation_4});

  @override
  State<ParentFrame> createState() => _ParentFrameState();
}

class _ParentFrameState extends State<ParentFrame>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliddingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: widget.right.w, bottom: widget.bottom.h, left: widget.left.w),
      child: SlideTransition(
        position: sliddingAnimation,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: SizedBox(
                width: 110.w,
                height: 300.h,
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    child: Transform.scale(
                      scale: widget.scale,
                      child: FractionalTranslation(
                        translation:
                            Offset(widget.offset_1.w, widget.offset_2.h),
                        child: Container(
                          width: 200.w,
                          height: 200.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/frame.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void animation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    sliddingAnimation = Tween<Offset>(
            begin: Offset(widget.animation_1.w, widget.animation_2.h),
            end: Offset(widget.animation_3.w, widget.animation_4.h))
        .animate(animationController);
    animationController.forward();
    setState(() {});
  }
}
