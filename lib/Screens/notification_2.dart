import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';
import 'package:list_in_buy_flutter/Widgets/custom_text.dart';

class Snotification2 extends StatelessWidget {
  const Snotification2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Column(
          children: [
            SizedBox(
              height: 115.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  txt: 'Similar Ads',
                  img: 'assets/images/Vector 64.png',
                ),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 8,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      width: 160.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xffF3F4F8)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 39.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(6),
                                  ),
                                  color: Color(0xffFFCB47),
                                ),
                                child: Center(
                                  child: Text(
                                    'clean',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 6.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/2021-ford.png',
                            width: 120.h,
                            height: 67.w,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Container(
                            height: 21.h,
                            width: 122.w,
                            child: Text(
                              'Ford Equator Three - Rows SUV Debuts with Bold color.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 8.sp),
                            ),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: Text(
                                  '\$20,025',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9.sp,
                                      color: Color(0xff2A84F2)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 12.w),
                                child: CustomButton(
                                  Label: 'More Detail',
                                  color: Color.fromRGBO(42, 132, 242, 0.3),
                                  txtColor: Color(0xff2A84F2),
                                  bgColor: Color.fromRGBO(42, 132, 242, 0.3),
                                  Height: 16.h,
                                  Width: 52.w,
                                  Fweight: FontWeight.w500,
                                  Fsize: 6.sp,
                                  bradius: BorderRadius.circular(1.57),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20.sp,
                                color: Color(0xff838EA1),
                              ),
                              Text(
                                'Lagos, Ikeja',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.sp,
                                    color: Color(0xff838EA1)),
                              ),
                              Icon(
                                Icons.diamond_outlined,
                                size: 20.sp,
                                color: Color(0xff838EA1),
                              ),
                              Text(
                                'Premium Ad',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.sp,
                                    color: Color(0xff838EA1)),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
