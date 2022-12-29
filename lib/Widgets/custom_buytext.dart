import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyText extends StatelessWidget {
  String txt;
  BuyText({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),
    );
  }
}
