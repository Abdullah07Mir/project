import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_text.dart';
import 'package:list_in_buy_flutter/Widgets/custom_textfield.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                'assets/images/unsplash_ugsZLJLS56w.png',
                height: 30.h,
                width: 30.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 98.w),
              child: Text(
                'Richard Eric',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Colors.black),
              ),
            ),
            Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: Color(0xff2A84F2),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Color(0xff2A84F2),
                ),
              ),
              child: Icon(
                Icons.phone_outlined,
                color: Colors.white,
                size: 18.sp,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 132.h,
              width: 414.w,
              color: Color(0xffF3F4F8),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 16.h, right: 16.w),
                          child: Container(
                            // width: 51.w,
                            height: 33.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6.w, right: 6.w),
                                child: Text(
                                  'I Love Flutter ',
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 80.w,
                        child: Image.asset('assets/images/unsplash_ugsZLJLS56w.png',height: 30.h,width: 30.w,)),
                      Padding(
                        padding: EdgeInsets.only(top:10.0.h),
                        child: SizedBox(
                          height: 70.h,
                          width: 330.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                               border: InputBorder.none,
                              hintText: 'Type your message here...',
                              suffixIcon: SizedBox(
                                width: 80.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.mic_none_outlined),
                                    
                                    Icon(Icons.send_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 81.w),
                      child: Container(
                        width: 256.w,
                        height: 96.h,
                        // color: Color.fromRGBO(42, 132, 242, 0.3),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(42, 132, 242, 0.3),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 24.w, right: 34.w),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 31.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          'assets/images/unsplash_ugsZLJLS56w.png',
                          height: 40.h,
                          width: 40.w,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32.w),
                      child: Text('O7:01'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 83.w),
                        child: Container(
                          width: 256.w,
                          height: 96.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEFF3),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.w, right: 34.w),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 33.w),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset(
                            'assets/images/unsplash_ugsZLJLS56w.png',
                            height: 40.h,
                            width: 40.w,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 33.w),
                        child: Text('O7:01'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
