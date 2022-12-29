import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/main.dart';

class Favorite extends StatelessWidget {
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
                  'My save',
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
            itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    width: 382.w,
                    height: 163.h,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Container(
                              height: 102.h,
                              width: 102.w,
                              color: Color(0xffF3F4F8),
                              child: Image.asset(
                                'assets/images/fav 1.png',
                                width: 93.w,
                                height: 61.h,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.w, top: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                              
                                children: [
                                  Text(
                                    'Toyota Lineup',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 16.sp),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 98.w),
                                    child: Icon(Icons.clear,size: 20.sp,color: Color(0xff838EA1),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Container(
                                height: 30.h,
                                width: 166.w,
                                child: Text(
                                  'Toyota Lineup - Latest Models & Discontinued Models',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                      color: Color(0xff838EA1)),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                '\$20,025',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Color(0xff2A84F2)),
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,
                                      color: Color(0xff838EA1), size: 20.sp,),
                                  Text(
                                    'Washington,DC',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.sp,
                                        color: Color(0xff838EA1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
         ),
        ],
      ),
    ));
  }
}
