import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/screens/screens.dart';
import 'package:trail_poland/utils/utils.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Text('Settings', style: ThemeStyles.black24),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 358.w,
              height: 64.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 20.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Terms of use',
                    style: ThemeStyles.black15,
                  ),
                  Image.asset(
                    'assets/images/icons/arrow-right.png',
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 358.w,
              height: 64.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 20.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Help & Support',
                    style: ThemeStyles.black15,
                  ),
                  Image.asset(
                    'assets/images/icons/arrow-right.png',
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 358.w,
              height: 64.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 20.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Restore purchases',
                    style: ThemeStyles.black15,
                  ),
                  Image.asset(
                    'assets/images/icons/arrow-right.png',
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: GestureDetector(
            onTap: () => _onTapPremium(context),
            child: Container(
              width: 358.w,
              height: 64.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 20.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BUY PREMIUM FOR \$1,99',
                    style: ThemeStyles.black15,
                  ),
                  Image.asset(
                    'assets/images/icons/arrow-right.png',
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  void _onTapPremium(BuildContext context) {
    final route = MaterialPageRoute(
      builder: (context) => const PremiumScreen(),
    );

    Navigator.of(context, rootNavigator: true).push(route);
  }
}
