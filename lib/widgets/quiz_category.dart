import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class QuizCategory extends StatelessWidget {
  const QuizCategory({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  final String image;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 171.w,
            height: 169.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  topLeft: Radius.circular(16.r)
              ),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 171.w,
            height: 39.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h,),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16.r),
              bottomLeft: Radius.circular(16.r)
            ),
            ),
            child: Text(
              title,
              style: ThemeStyles.black17,
            ),
          ),
        ],
      ),
    );
  }
}
