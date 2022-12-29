import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return DefaultTabController(
      length: 3,
      child: Container(
        child: SizedBox(
                height: 34.h,
                width: 414.w,
                child: TabBar(tabs: [
                  Tab(
                    child: Text(
                      'Vehicle Description',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff838EA1)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Vehicle Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff838EA1)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Review',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff838EA1)),
                    ),
                  ),
                ]),
              ),
      ),
    );
  }
}