import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/place_card.dart';
import 'package:trail_poland/widgets/widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: CustomSearchBar(focusNode: focusNode),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryItem(
                  title: categories[0].title,
                  icon: categories[0].icon,
                  width: 175,
                ),
                CategoryItem(
                  title: categories[1].title,
                  icon: categories[1].icon,
                  width: 175,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryItem(
                  title: categories[2].title,
                  icon: categories[2].icon,
                ),
                CategoryItem(
                  title: categories[3].title,
                  icon: categories[3].icon,
                ),
                CategoryItem(
                  title: categories[4].title,
                  icon: categories[4].icon,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 24.h,
                bottom: 16.h,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended',
                  style: ThemeStyles.black24,
                ),
              ),
            ),
            Column(
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
          ],
        ),
      ),
    );
  }
}
