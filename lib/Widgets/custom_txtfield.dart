import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTxtField extends StatelessWidget {
  String txt;
  Icon? Suffixicon;
  CustomTxtField({
    required this.txt,
    this.Suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
                padding: EdgeInsets.only(left: 32.w, top: 42.h),
                child: Text(txt, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp, ),),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 12.h),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF3F4F8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.w),
                      child: Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: txt,
                            hintStyle: TextStyle(color: Color.fromRGBO(131, 142, 161, 0.5)),
                            border: InputBorder.none,
                            suffixIcon: Suffixicon,
                          ),
                          
                        ),
                      ),
                    ),
                  )),
    ],);
  }
}