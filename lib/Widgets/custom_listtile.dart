import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomlistTile extends StatelessWidget {
  Color color;
  Color tcolor;
  Icon icon;
  String txt;
  CustomlistTile({
    required this.color,
    required this.icon,
    required this.txt,
    required this.tcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 32.h,
        width: 32.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: icon,
      ),
      title: Text(txt, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp, color: tcolor),),
    );
  }
}