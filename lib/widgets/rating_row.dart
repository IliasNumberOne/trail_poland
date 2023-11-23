import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.rating,
    required this.reviews,
  });

  final double rating;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/icons/star.png',
          width: 24.w,
          height: 24.h,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            '$rating',
            style: ThemeStyles.black15,
          ),
        ),
        Text(
          '$reviews reviews',
          style: ThemeStyles.grey15,
        ),
      ],
    );
  }
}
