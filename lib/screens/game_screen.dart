import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int selected = -1;

  void select(int id) {
    setState(() {
      if (selected == id) {
        selected = -1;
        return;
      }
      selected = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390.w,
          height: 320.h,
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
              SizedBox(height: 24.h),
              CloseBtn(
                onTap: () => context.go('/quiz'),
              ),
              Spacer(),
              Text(
                'Polish Landmarks',
                style: ThemeStyles.greyLight15,
              ),
              Text(
                'What is the name of the largest castle in the world by land area, located in Poland?',
                style: ThemeStyles.white24,
              ),
            ],
          ),
        ),
        SizedBox(height: 40.h),
        Column(
          children: List.generate(
            4,
            (i) => Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: GestureDetector(
                onTap: () => select(i),
                child: Container(
                  width: 358.w,
                  height: 56.h,
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        i == selected
                            ? 'assets/images/icons/radio_btn_selected.png'
                            : 'assets/images/icons/radio_btn.png',
                        width: 24.w,
                        height: 24.h,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        'Wawel Castle',
                        style: ThemeStyles.black15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () => context.go('/quiz/game/finish_game'),
          child: Container(
            width: 358.w,
            height: 57.h,
            decoration: BoxDecoration(
              color: ThemeColors.red,
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Center(
              child: Text(
                'Submit',
                style: ThemeStyles.white20,
              ),
            ),
          ),
        ),
        SizedBox(height: 34.h),
      ],
    );
  }
}
