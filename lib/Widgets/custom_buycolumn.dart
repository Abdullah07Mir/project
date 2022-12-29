import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBuycolumn extends StatelessWidget {
  String txt;
  String subtxt;
  CustomBuycolumn({required this.txt, required this.subtxt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(txt,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),),
        SizedBox(height: 2.h,),
        Text(subtxt,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp, color: Color(0xff838EA1)),),
      ],
    );
  }
}