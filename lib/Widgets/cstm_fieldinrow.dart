import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_textfield.dart';

class Fieldinrow extends StatelessWidget {
  String mintxt;
  String maxtxt;
  Fieldinrow({required this.mintxt, required this.maxtxt});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  SizedBox(
                      height: 46.h,
                      width: 155.w,
                      child: CustomTextfiled(
                        HintText: mintxt,
                        fntsize: 12.sp,
                        fontweight: FontWeight.w400,
                        obsecure: false,
                        color: Colors.blue,
                        bgcolor: Color(0xffF3F4F8),
                      )),
                  SizedBox(
                    width: 39.w,
                    child: Center(
                      child: Icon(
                        Icons.linear_scale_outlined,
                        size: 13,
                        color: Color(0xff2A84F2),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 46.h,
                      width: 155.w,
                      child: CustomTextfiled(
                        HintText: maxtxt,
                        fntsize: 12.sp,
                        fontweight: FontWeight.w400,
                        obsecure: false,
                        color: Colors.blue,
                        bgcolor: Color(0xffF3F4F8),
                      )),
                ],
              );
  }
}