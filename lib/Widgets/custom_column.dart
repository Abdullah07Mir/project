import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xff2A84F2),
          ),
          child: Icon(
            Icons.heat_pump_outlined,
            size: 20.sp,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Fuel Economy',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          '21/29 mpg',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}
