import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleTxtField extends StatelessWidget {
  String txt;
  SimpleTxtField({required this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF3F4F8),
      child: Padding(
        padding: EdgeInsets.only(left: 18.w),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: txt,
            hintStyle: TextStyle(color: Color.fromRGBO(131, 142, 161, 0.5)),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
