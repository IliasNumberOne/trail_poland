import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({super.key});

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  int selected = 0;

  void changeCategory(int id) {
    selected = id;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    return Column(
      children: [
        Container(
          width: 390.w,
          height: 317.h,
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
            children: [
              Spacer(),
              Text(
                'Hey! Tell us where you want to go',
                style: ThemeStyles.white24,
              ),
              SizedBox(height: 16.h),
              CustomSearchBarTwo(focusNode: focusNode,)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.h,
          ),
          child: Container(
            width: 358.w,
            height: 54.h,
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 8.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                2,
                (i) => GestureDetector(
                  onTap: () => changeCategory(i),
                  child: Container(
                    width: 159.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      color: i == selected ? ThemeColors.red : Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Text(
                        i == 0 ? "All" : 'Favourite',
                        style: i == selected
                            ? ThemeStyles.white15
                            : ThemeStyles.red15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                4,
                    (index) => Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: PlaceCard(
                    onTap: () => context.go('/routes/routes_info'),
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
