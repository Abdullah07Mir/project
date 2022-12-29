import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_text.dart';

import '../Widgets/custom_buycard.dart';

class ViewUserprofile extends StatelessWidget {
  const ViewUserprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 100.h,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 30.h, left: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 120.w),
                child: Image.asset(
                  'assets/images/old-logo-blue 1.png',
                  height: 20.h,
                  width: 78.w,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Container(
                height: 167.h,
                width: 382.w,
                decoration: BoxDecoration(color: Color(0xffF3F4F8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/unsplash_2EGNqazbAMk.png',
                      height: 80.h,
                      width: 80.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 18.h,),
                        Text(
                          'William Mark',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Joined 15 September 2021',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Avg. Seller Rating',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        RatingBar.builder(
                          itemSize: 20.sp,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          height: 30.h,
                          width: 221.w,
                          child: Text(
                            'Seller ratings are gotten from buyers who rate this seller directly',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 10.sp),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: CustomText(
                txt: 'Seller’s Review',
                img: 'assets/images/Vector 64.png',
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Container(
              height: 190.h,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      height: 190.h,
                      width: 156.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.heart_broken, color: Colors.white,),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Sandral Robichaud',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.white),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, right: 10.w),
                            child: Container(
                              height: 54,
                              width: 137,
                              child: Text(
                                'Nice doing business with him, he has been inspiring.', textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 62.h,),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: CustomText(
                txt: 'Seller Ads',
                img: 'assets/images/Vector 64.png',
              ),
            ),
            SizedBox(height: 18.h,),
            Buycard(),
              Buycard(),
          ],
        ),
      ),
    );
  }
}
