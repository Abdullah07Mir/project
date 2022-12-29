import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/edit_profile_2.dart';
import 'package:list_in_buy_flutter/Widgets/custom_dropdown.dart';
import 'package:list_in_buy_flutter/Widgets/custom_textfield.dart';
import 'package:list_in_buy_flutter/Widgets/custom_txtfield.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
                  padding: EdgeInsets.only(top: 110.h, left: 66.w),
                  child: Text(
                    'Account Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 110.h, left: 334.w),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => EditProfile2()),
                      ),
                    ),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Color(0xffFFCB47),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 179.h, left: 32.w),
                  child: Image.asset(
                    'assets/images/unsplash_2EGNqazbAMk.png',
                    height: 100.h,
                    width: 100.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 247.h, left: 100.w),
                  child: Container(
                    height: 32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 570.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTxtField(txt: 'First Name'),
                  CustomTxtField(txt: 'Last Name'),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 32.h),
                    child: Text(
                      'Location',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 12.h),
                    child: CustomDropdown(
                        Items: ['location', 'a', 'c', 'b'],
                        wdth: 370.w,
                        bordercolor: Color(0xffF3F4F8),
                        color: Color(0xffF3F4F8)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 32.h),
                    child: Text(
                      'Sex',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 12.h),
                    child: CustomDropdown(
                        Items: ['Sex', 'a', 'c', 'b'],
                        wdth: 370.w,
                        bordercolor: Color(0xffF3F4F8),
                        color: Color(0xffF3F4F8)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 32.h),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 12.h),
                    child: CustomDropdown(
                        Items: ['Email', 'a', 'c', 'b'],
                        wdth: 370.w,
                        bordercolor: Color(0xffF3F4F8),
                        color: Color(0xffF3F4F8)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 32.h),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, top: 12.h),
                    child: CustomDropdown(
                        Items: ['Phone Number', 'a', 'c', 'b'],
                        wdth: 370.w,
                        bordercolor: Color(0xffF3F4F8),
                        color: Color(0xffF3F4F8)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
