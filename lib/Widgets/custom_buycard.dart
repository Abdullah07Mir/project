import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';

class Buycard extends StatelessWidget {
  const Buycard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
                child: Container(
                  height: 152.h,
                  width: 382.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 102.h,
                            width: 102.w,
                            decoration: BoxDecoration(
                              color: Color(0xffF3F4F8),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                              'assets/images/image 7.png',
                              width: 94.w,
                              height: 50.h,
                            )),
                        Column(
                          children: [
                            SizedBox(height: 18.h,),
                            Text(
                              'Mercedes-Benz',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14.sp),
                            ),
                            SizedBox(
                              height: 26.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 15.sp,
                                ),
                                Text(
                                  'Washington,DC',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp),
                                ),
                              
                              ],
                            ),
                            SizedBox(height: 9.h,),
                              CustomButton(
                                  Label: 'Foreign Used',
                                  color: Color.fromRGBO(42, 132, 242, 0.3),
                                  txtColor: Color(0xff2A84F2),
                                  bgColor: Color.fromRGBO(42, 132, 242, 0.3),
                                  Height: 29.h,
                                  Width: 90.w,
                                  Fweight: FontWeight.w500,
                                  Fsize: 10.sp,
                                  bradius: BorderRadius.circular(4),
                                ),
                          ],
                        ),
                         Column(
                          children: [
                            SizedBox(height: 18.h,),
                            Text(
                              '\$43,847.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14.sp, color: Color(0xff2A84F2)),
                            ),
                            SizedBox(
                              height: 26.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.av_timer_rounded,
                                  size: 15.sp,
                                ),
                                Text(
                                  'Washington,DC',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp),
                                ),
                              
                              ],
                            ),
                            SizedBox(height: 9.h,),
                              CustomButton(
                                  Label: 'Foreign Used',
                                  color: Color.fromRGBO(42, 132, 242, 0.3),
                                  txtColor: Color(0xff2A84F2),
                                  bgColor: Color.fromRGBO(42, 132, 242, 0.3),
                                  Height: 29.h,
                                  Width: 90.w,
                                  Fweight: FontWeight.w500,
                                  Fsize: 10.sp,
                                  bradius: BorderRadius.circular(4),
                                ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
  }
}