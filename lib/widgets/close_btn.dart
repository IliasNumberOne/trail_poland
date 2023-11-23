import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CloseBtn extends StatelessWidget {
  const CloseBtn({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: Image.asset(
          'assets/images/icons/close.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
