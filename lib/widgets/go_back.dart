import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GoBack extends StatelessWidget {
  const GoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16.w,
      top: 21.h,
      child: GestureDetector(
        onTap: context.pop,
        child: Container(
          width: 40.w,
          height: 40.h,
          padding: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Image.asset(
            'assets/images/icons/arrow-left.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
