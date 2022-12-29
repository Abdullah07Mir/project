import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';

class EditProfile3 extends StatelessWidget {
  const EditProfile3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300.h,
            child: Stack(
              children: [
                Container(
                  width: 414.w,
                  height: 229.h,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 98.h, left: 32.w),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 25.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 96.h, left: 97.w, right: 97.w),
                  child: Text(
                    'Password Reset',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 125.w, top: 65.h, right: 135.w),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(42, 132, 242, 0.1),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 132.w, top: 72.h),
                child: Container(
                  height: 85.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(55, 8, 107, 230),
                  ),
                  child: Image.asset('assets/images/Group 1.png'),
                ),
              ),
            ],
          ),
          Container(
            height: 62.h,
            width: 294.w,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Your password has been successfully reset.Click below to login magically.',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                )),
          ),
          SizedBox(
            height: 45.h,
          ),
          CustomButton(
                  Label: 'Continue',
                  color: Colors.blue,
                  txtColor: Colors.white,
                  bgColor: Colors.blue,
                  Height: 52.h,
                  Width: 342.w,
                  Fweight: FontWeight.w400,
                  Fsize: 18.sp,
                  bradius: BorderRadius.circular(8)),
        ],
      ),
    );
  }
}
