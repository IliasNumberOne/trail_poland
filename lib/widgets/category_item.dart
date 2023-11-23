import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    this.onTap,
    this.width = 114,
    required this.title,
    required this.icon,
  });

  final VoidCallback? onTap;
  final int width;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width.w,
        height: 56.h,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: ThemeStyles.black15,
            ),
            Image.asset(
              icon,
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
