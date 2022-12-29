import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/sign_inScreen.dart';

import '../Widgets/custom_button.dart';

class confirmReset extends StatelessWidget {
  const confirmReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 32.w),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 125.w, top: 65.h, right: 157.w),
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
              SizedBox(
                height: 45.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 109.w),
                child: Text(
                  'Password Reset',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 36.sp),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 88.w),
                child: Text(
                  'Your password has been successfully reset.Click below to login magically.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff838EA1)),
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.w),
                child: InkWell(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin(),
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
                    bradius: BorderRadius.circular(8),
                    )),
              ),
              SizedBox(
                height: 71.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 18.w),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Color(0xff2A84F2),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff2A84F2),
                        ),
                      ),
                    ),
                  ),
                  Text('Back to Sign in'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
