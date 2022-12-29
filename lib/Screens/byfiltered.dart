import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/buyproduct.dart';
import 'package:list_in_buy_flutter/Screens/filter.dart';
import 'package:list_in_buy_flutter/Widgets/custom_dropdown.dart';

import '../Widgets/custom_button.dart';
import '../Widgets/custom_searchbar.dart';

class Byfiltered extends StatelessWidget {
  const Byfiltered({super.key});

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
      body: Padding(
        padding: EdgeInsets.only(left: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 308.w,
                  height: 37.h,
                  child: SearchBar(
                    cradius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Filtered(),
                            ),
                          ),
                      child: Image.asset('assets/images/icon 1.png')),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            SizedBox(
              height: 64.h,
              width: 469.w,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.white,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: EdgeInsets.only(right: 40.w),
                  child: CustomDropdown(
                    Items: ['Cars'],
                    wdth: 155.w,
                    bordercolor: Color(0xff2A84F2),
                    color: Color(0xffEDF1FF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            RichText(
              text: TextSpan(
                text: 'Found 30 ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'ads',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14.sp)),
                  TextSpan(
                    text: ' in Abule Egba',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.9,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: 8,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Buyproduct()),),
                        child: Card(
                          child: Container(
                            width: 139.w,
                            height: 203.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 39.w,
                                      height: 12.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(6),
                                        ),
                                        color: Color(0xffFFCB47),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'clean',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 6.sp),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Bmw',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8.sp,
                                          color: Color(0xff838EA1)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 50.w),
                                      child: Icon(
                                        Icons.diamond_outlined,
                                        size: 10.sp,
                                        color: Color(0xff838EA1),
                                      ),
                                    ),
                                    Text(
                                      'Premium Ad',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8.sp,
                                          color: Color(0xff838EA1)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Container(
                                  width: 99.w,
                                  height: 24.h,
                                  child: Text(
                                    '2022 Toyota Highlander Hybrid',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8.sp,
                                        color: Color(0xff2A84F2),),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/2021-ford.png',
                                  width: 90.h,
                                  height: 59.w,
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Text(
                                        '\$20,025',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9.sp,
                                            color: Color(0xff2A84F2)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 12.w),
                                      child: Container(
                                        height: 15.h,
                                        width: 15.w,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                                        color: Colors.yellow),
                                        child: Icon(Icons.download_for_offline_outlined, size: 10.sp, color: Color(0xff3A456E),),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 10.sp,
                                      color: Color(0xff838EA1),
                                    ),
                                    Text(
                                      'Lagos, Ikeja',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8.sp,
                                          color: Color(0xff838EA1)),
                                    ),
                                    Icon(
                                      Icons.diamond_outlined,
                                      size: 10.sp,
                                      color: Color(0xff838EA1),
                                    ),
                                    Text(
                                      'Premium Ad',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8.sp,
                                          color: Color(0xff838EA1)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
