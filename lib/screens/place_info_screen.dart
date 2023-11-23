import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/go_back.dart';
import 'package:trail_poland/widgets/rating_row.dart';

class PlaceInfoScreen extends StatelessWidget {
  const PlaceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/nature2.png',
          width: 390.w,
          height: 444.h,
          fit: BoxFit.cover,
        ),
        const GoBack(),
        Positioned(
          bottom: 0,
          child: Container(
            width: 390.w,
            height: 484.h,
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wawel Royal Castle',
                      style: ThemeStyles.black24,
                    ),
                    Image.asset(
                      'assets/images/icons/heart.png',
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.h, bottom: 33.h),
                  child: RatingRow(rating: 5.0, reviews: 11),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      'Poland’s historic sites number in the thousands, but only one can claim it has been standing the longest - Bialowieza Forest. This ancient forest sits on the border between Poland and Belarus, in Podlasie Region. UNESCO named the site a Biosphere Reserve in 1977 and two years later, it also joined the UNESCO World Heritage List. It is the last European lowland deciduous and mixed forest in existence. The Bialowieza represents the forest that once covered most of Europe. This primeval forest is home to animal and plant species typical of both Eastern and Western Europe. It’s the only place in the world where you can see European bison freely roaming. Some other species that call the forest home include elk, wolves, red and roe deer, lynx, and wild boar. Amidst the pine, oak, spruce, and beech that compose the bulk of the forest, you’ll find trees that are much older than any human can ever hope to live. There are over 900 different plant species that have made their home in the woodland. Rare avian species such as peregrine falcon, white stork, and white-tailed eagle flutter about the picturesque forest. An area of about 40 square miles of the forest is protected as a natural park. And a visit to that part is only possible as part of a guided tour or official scientific expedition. Visitors can enjoy the sights by foot or horse-drawn carriage. The National Park takes care to ensure that this part of the forest remains undisturbed and breathing the ancient air is an experience well worth the moderate tour fee. There are several hiking and cycling trails that go through the forest. Organized bird watching with expert guides is another popular way to get the most out of a visit to the forest.Visitors can opt to stay a village of Bialowieza. There you can find lodging and dining and recreation. There are a few monuments and historical buildings, a palace and parks complex, and a Natural History Museum. Poland’s UNESCO World Heritage sites are all worth visiting, but this is one of the best. Even those with only a passing interest in nature will become speechless by the sheer magnitude of the Bialowieza Forest. If you want to see a truly wild place when you visit Poland, this is it!',
                      style: ThemeStyles.grey15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
