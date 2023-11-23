import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class PickPlaceScreen extends StatelessWidget {
  const PickPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390.w,
          height: 248.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/quiz1.png'),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GoBack(),
              Spacer(),
              Text(
                'Where to go',
                style: ThemeStyles.white24,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                4,
                    (index) => Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: PlaceCard(
                    onTap: () => context.go('/place_info'),
                    image: 'assets/images/nature1.png',
                    name: 'Wawel Royal Castle',
                    rating: 5.0,
                    reviews: 32,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
