import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/notification_2.dart';

class Snotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Column(
        children: [
          SizedBox(
            height: 82.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notification',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                Text(
                  'Clear All',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xffEB5757)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Snotification2(),)),
                    child: Card(
                      child: Container(
                        width: 382.w,
                        height: 163.h,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 18.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.h),
                                        child: Container(
                                          height: 45.h,
                                          width: 40.w,
                                          color: Color(0xffF3F4F8),
                                          child: Image.asset(
                                            'assets/images/not 1.png',
                                            width: 43.w,
                                            height: 27.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.w, bottom: 1.h),
                                        child: Container(
                                          height: 45.h,
                                          width: 40.w,
                                          color: Color(0xffF3F4F8),
                                          child: Image.asset(
                                            'assets/images/not 1.png',
                                            width: 43.w,
                                            height: 27.h,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.h),
                                        child: Container(
                                          height: 45.h,
                                          width: 40.w,
                                          color: Color(0xffF3F4F8),
                                          child: Image.asset(
                                            'assets/images/not 1.png',
                                            width: 43.w,
                                            height: 27.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.w, top: 1.h),
                                        child: Container(
                                          height: 45.h,
                                          width: 40.w,
                                          color: Color(0xffF3F4F8),
                                          child: Image.asset(
                                            'assets/images/not 1.png',
                                            width: 43.w,
                                            height: 27.h,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      
                                      Padding(
                                        padding: EdgeInsets.only(top: 40.h),
                                        child: Container(
                                          width: 167.w,
                                          height: 48.h,
                                          child: Text(
                                            'Check ads similar to your favourite',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.sp),
                                          ),
                                        ),
                                      ),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(left: 51.w, bottom: 30.h,),
                                        child: Container(
                                          child: Icon(
                                            Icons.clear,
                                            size: 20.sp,
                                            color: Color(0xff838EA1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 27.h,
                                  ),
                                  Text(
                                    '21/03/2021',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: Color(0xff838EA1)),
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
