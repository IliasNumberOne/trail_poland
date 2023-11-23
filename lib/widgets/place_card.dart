import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    this.onTap,
    required this.image,
    required this.name,
    required this.rating,
    required this.reviews,
  });

  final VoidCallback? onTap;
  final String image;
  final String name;
  final double rating;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.asset(
            image,
            width: 358.w,
            height: 250.h,
            fit: BoxFit.cover,
          ),
          Container(
            width: 358.w,
            height: 72.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: ThemeStyles.black17,
                    ),
                    Image.asset(
                      'assets/images/icons/heart.png',
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
