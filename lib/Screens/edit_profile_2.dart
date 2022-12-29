import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/edit_profile_3.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';
import 'package:list_in_buy_flutter/Widgets/custom_txtfield.dart';

class EditProfile2 extends StatelessWidget {
  const EditProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: EdgeInsets.only(top: 110.h, left: 32.w),
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
                    'Change Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 139.h, left: 91.w, right: 92.w),
                  child: Text(
                    'Type your new password',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        color: Colors.white),
                  ),
                ),
                
              ],
            ),
          ),
          CustomTxtField(
              txt: 'Password',
              Suffixicon: Icon(
                Icons.lock_outline_rounded,
                size: 20,
                color: Color(0xff2A84F2),
              )),
          CustomTxtField(
              txt: 'Confirm Password',
              Suffixicon: Icon(
                Icons.lock_outline_rounded,
                size: 20,
                color: Color(0xff2A84F2),
              )),
          Padding(
            padding: EdgeInsets.only(top: 45.h, left: 32.w),
            child: InkWell(
              onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => EditProfile3()),
                      ),
                    ),
              child: CustomButton(
                  Label: 'Continue',
                  color: Colors.blue,
                  txtColor: Colors.white,
                  bgColor: Colors.blue,
                  Height: 52.h,
                  Width: 342.w,
                  Fweight: FontWeight.w400,
                  Fsize: 18.sp,
                  bradius: BorderRadius.circular(8)),
            ),
          )
        ],
      ),
    );
  }
}
