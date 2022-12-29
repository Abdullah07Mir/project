import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  String txt;
  String ?seeall;
  String ?img;
  CustomText({required this.txt, this.seeall, this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Image.asset(
             // 'assets/images/Vector 64.png',
             img??' ',
              height: 28.h,
              width: 92.17.w,
            ),
            Text(
              txt,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 27.w),
          child: Text(seeall??"", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp, color: Color(0xff2A84F2)),),
        ),
      ],
    );
  }
}
