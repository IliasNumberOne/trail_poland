import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class PickerScreen extends StatelessWidget {
  const PickerScreen({super.key});

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
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Please choose the best option for your trip',
              style: ThemeStyles.white24,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(16.sp),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 136.h,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.w,
            ),
            itemBuilder: (context, i) {
              return PickerOption(
                onTap: () => context.go('/picker/number_seats'),
                image: 'assets/images/nature1.png',
                title: 'Landmarks',
              );
            },
          ),
        ),
      ],
    );
  }
}
