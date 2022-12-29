import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListview extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242.h,
      width: 449.w,
      child: ListView.builder(
        shrinkWrap: true,
        
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: SizedBox(
            height: 203.h,
            width: 139.w,
            child: Card(
             
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/unsplash_GFJd8pfErUQ.png', fit: BoxFit.cover,
                  ),
                  SizedBox(
                          height: 5.h,
                        ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text(
                          'used',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 8.sp),
                        ),
                        SizedBox(
                          width: 32.w,
                          height: 7.h,
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          size: 8.sp,
                        ),
                        Text(
                          'Premium Plus Ad',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 6.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 129.w,
                    height: 16.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w,),
                      child: Text(
                        'Red hoodie in good..',
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                   padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 11.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Washington,DC',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 8.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 11.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Washington,DC',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 8.sp),
                        ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: 5.w,top: 5.h,),
                    child: Text(
                      '\$ 1000',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Color(0xff2A84F2),),
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
