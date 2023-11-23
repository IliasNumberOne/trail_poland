import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/utils/utils.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
    required this.child,
    this.hasBottomBar = true,
    required this.currentPath,
  });

  final Widget child;
  final bool hasBottomBar;
  final String currentPath;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void _onTap(String path) {
    setState(() {
      context.go(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Material(
      color: ThemeColors.greyLight,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
              padding: EdgeInsets.only(top: overlay.top),
              child: widget.child,
          ),
          Visibility(
            visible: widget.hasBottomBar,
            child: Padding(
              padding: EdgeInsets.only(bottom: overlay.bottom + 15.h),
              child: Container(
                width: 358.w,
                height: 75.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                  color: ThemeColors.red,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    tapBarItems.length,
                    (i) => GestureDetector(
                      onTap: () => _onTap(tapBarItems[i].path),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            widget.currentPath == tapBarItems[i].path
                                ? tapBarItems[i].selectedImg
                                : tapBarItems[i].regularImg,
                            width: 24.w,
                            height: 24.h,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            tapBarItems[i].title,
                            style: ThemeStyles.greyLight12,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
