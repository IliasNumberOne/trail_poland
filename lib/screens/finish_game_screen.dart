import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class FinishGameScreen extends StatelessWidget {
  const FinishGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final result = false;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.h, bottom: 48.h),
          child: Image.asset(
            'assets/images/finish_game_img.png',
            width: 358.w,
            height: 410.h,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          result ? 'Congratulations!' : 'Good Effort!',
          style: ThemeStyles.black24,
        ),
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Text(
            result
                ? "You've navigated the treasures of Poland like a true explorer! Celebrate your triumph and share it, or challenge yourself once more."
                : "You stumbled, but every explorer does. Brush off the dust, learn, and try again. Your next adventure awaits!",
            style: ThemeStyles.grey15,
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: result ? 57.w : 171.w,
                height: 57.h,
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ThemeColors.red
                  ),
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: result
                    ? Image.asset(
                        'assets/images/icons/share.png',
                        fit: BoxFit.cover,
                      )
                    : Center(
                        child: Text('Learn', style: ThemeStyles.red15),
                      ),
              ),
            ),
            SizedBox(width: 16.w),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: result ? 286.w : 171.w,
                height: 57.h,
                decoration: BoxDecoration(
                  color: ThemeColors.red,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Center(
                  child: Text(
                    result ? 'Play Again' : 'Try Again',
                    style: ThemeStyles.white20,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 34.h),
      ],
    );
  }
}
