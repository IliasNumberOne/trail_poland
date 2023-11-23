import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/services/services.dart';
import 'package:trail_poland/utils/utils.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Material(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: overlay.top+24.h, bottom: 48.h),
            child: Image.asset(
              'assets/images/finish_game_img.png',
              width: 358.w,
              height: 410.h,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Welcome to TrailPoland!',
            style: ThemeStyles.black24,
          ),
          Padding(
            padding: EdgeInsets.all(16.sp),
            child: Text(
             'Embark on a tour through the heart of Poland with Trail Poland. Discover hidden gems, historic landmarks, and scenic routes.',
              style: ThemeStyles.grey15,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              context.read<PreferenceService>().setIsFirstEntry();
              context.go('/');
              setState(() {});
            },
            child: Container(
              width: 358.w,
              height: 57.h,
              decoration: BoxDecoration(
                color: ThemeColors.red,
                borderRadius: BorderRadius.circular(40.r)
              ),
              child: Center(
                child: Text(
                  'Explore TrailPoland',
                  style: ThemeStyles.white20,
                ),
              ),
            ),
          ),
          SizedBox(height: overlay.bottom + 34.h),
        ],
      )
    );
  }
}
