import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/decline.dart';
import 'package:list_in_buy_flutter/Screens/filter.dart';
import 'package:list_in_buy_flutter/Screens/notification.dart';
import 'package:list_in_buy_flutter/Screens/view_userprofile.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';
import 'package:list_in_buy_flutter/Widgets/custom_buycard.dart';
import 'package:list_in_buy_flutter/Widgets/custom_buycolumn.dart';
import 'package:list_in_buy_flutter/Widgets/custom_column.dart';
import 'package:list_in_buy_flutter/Widgets/custom_text.dart';
import 'package:list_in_buy_flutter/Widgets/page_view.dart';
import 'package:list_in_buy_flutter/Widgets/tabbar.dart';

import '../Widgets/custom_pageview.dart';

class Buyproduct extends StatelessWidget {
  const Buyproduct({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 31.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 84.h,
                    ),
                    Icon(
                      Icons.arrow_back,
                      size: 30.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 120.w, right: 100.w),
                      child: Image.asset(
                        'assets/images/old-logo-blue 1.png',
                        height: 20.h,
                        width: 78.w,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Snotification(),
                          )),
                      child: Stack(
                        children: [
                          Icon(Icons.notifications_none_outlined),
                          Padding(
                            padding: EdgeInsets.only(top: 1.h, left: 15.w),
                            child: Icon(
                              Icons.circle,
                              size: 7,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 31.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 20.sp,
                    ),
                    Text(
                      '/Automobiles',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '2020 Toyota Highlander',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                  ),
                  Text(
                    '\$27345',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                  )
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 140.w,
                    child: TabBar(tabs: [
                      Tab(
                        child: Text(
                          'Images',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff838EA1)),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Videos',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: Color(0xff838EA1)),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    width: 175.w,
                    height: 18.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.av_timer_sharp,
                          size: 10.sp,
                        ),
                        Text(
                          'Posted 2 hrs ago',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          size: 10.sp,
                        ),
                        Text(
                          '04 Veiws',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 11.h,
              ),
              SizedBox(
                  height: 238.h,
                  width: double.infinity.w,
                  child: Pagedisplay()),
              SizedBox(
                height: 19.h,
              ),
              Card(
                child: Container(
                  height: 220.h,
                  width: 370.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '04 Review(s)',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12.sp),
                            ),
                            Container(
                              height: 15.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.yellow),
                              child: Icon(
                                Icons.download_for_offline_outlined,
                                size: 10.sp,
                                color: Color(0xff3A456E),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        CustomButton(
                            Label: 'Make a Deal',
                            color: Color(0xff2A84F2),
                            txtColor: Colors.black,
                            bgColor: Color(0xffF3F4F8),
                            Height: 52.h,
                            Width: 3423.w,
                            Fweight: FontWeight.w400,
                            Fsize: 18.sp,
                            bradius: BorderRadius.circular(8)),
                        SizedBox(
                          height: 33.h,
                        ),
                        CustomButton(
                            Label: 'Post Review',
                            color: Color(0xff2A84F2),
                            txtColor: Colors.black,
                            bgColor: Color(0xffF3F4F8),
                            Height: 52.h,
                            Width: 3423.w,
                            Fweight: FontWeight.w400,
                            Fsize: 18.sp,
                            bradius: BorderRadius.circular(8)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              CustomTabbar(),
              SizedBox(
                height: 32.h,
              ),
              Card(
                child: Container(
                  height: 90.h,
                  width: 382.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomColumn(),
                        CustomColumn(),
                        CustomColumn(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Card(
                child: Container(
                  height: 220.h,
                  width: 382.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomBuycolumn(txt: 'MILAGE', subtxt: '13645700'),
                            CustomBuycolumn(txt: 'MILAGE', subtxt: '13645700'),
                            CustomBuycolumn(txt: 'MILAGE', subtxt: '13645700'),
                            CustomBuycolumn(txt: 'MILAGE', subtxt: '13645700'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomBuycolumn(txt: 'COLOR', subtxt: 'WHITE'),
                            CustomBuycolumn(txt: 'COLOR', subtxt: 'WHITE'),
                            CustomBuycolumn(txt: 'COLOR', subtxt: 'WHITE'),
                            CustomBuycolumn(txt: 'COLOR', subtxt: 'WHITE'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Card(
                child: Container(
                  height: 535.h,
                  width: 382.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h, left: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/unsplash_2EGNqazbAMk.png',
                              height: 60.h,
                              width: 60.w,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sold By',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  'William Mark',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewUserprofile())),
                              child: CustomButton(
                                Label: 'View Profile',
                                color: Color(0xff2A84F2),
                                txtColor: Color(0xff3A456E),
                                bgColor: Color(0xffF3F4F8),
                                Height: 46.h,
                                Width: 155.w,
                                Fweight: FontWeight.w400,
                                Fsize: 14.sp,
                                bradius: BorderRadius.circular(5),
                              ),
                            ),
                            SizedBox(
                              width: 32.w,
                            ),
                            CustomButton(
                              Label: 'Contect Seller',
                              color: Color(0xff2A84F2),
                              txtColor: Color(0xff3A456E),
                              bgColor: Color(0xffF3F4F8),
                              Height: 46.h,
                              Width: 155.w,
                              Fweight: FontWeight.w400,
                              Fsize: 14.sp,
                              bradius: BorderRadius.circular(5),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        Container(
                          height: 30.h,
                          width: 200.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'SHARE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.sp),
                              ),
                              Icon(
                                Icons.facebook_rounded,
                                color: Colors.blue,
                                size: 35.sp,
                              ),
                              Icon(
                                Icons.whatsapp,
                                color: Colors.green,
                                size: 35.sp,
                              ),
                              Icon(
                                Icons.facebook_rounded,
                                color: Colors.blue,
                                size: 35.sp,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Text(
                          'Start chat with seller',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            CustomButton(
                              Label: 'Call me',
                              color: Color(0xff2A84F2),
                              txtColor: Color(0xff2A84F2),
                              bgColor: Color(0xffF3F4F8),
                              Height: 46.h,
                              Width: 76.w,
                              Fweight: FontWeight.w400,
                              Fsize: 16.sp,
                              bradius: BorderRadius.circular(5),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            CustomButton(
                              Label: 'Last price',
                              color: Color(0xff2A84F2),
                              txtColor: Color(0xff2A84F2),
                              bgColor: Color(0xffF3F4F8),
                              Height: 46.h,
                              Width: 89.w,
                              Fweight: FontWeight.w400,
                              Fsize: 16.sp,
                              bradius: BorderRadius.circular(5),
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            CustomButton(
                              Label: 'Is it available',
                              color: Color(0xff2A84F2),
                              txtColor: Color(0xff2A84F2),
                              bgColor: Color(0xffF3F4F8),
                              Height: 46.h,
                              Width: 117.w,
                              Fweight: FontWeight.w400,
                              Fsize: 16.sp,
                              bradius: BorderRadius.circular(5),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Container(
                          height: 80.h,
                          width: 300.w,
                          color: Color(0xffF3F4F8),
                          child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: 'Type a message...',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color(0xff838EA1)),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xff2A84F2)),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 31.h,
                        ),
                        CustomButton(
                            Label: 'Start chat',
                            color: Colors.blue,
                            txtColor: Colors.white,
                            bgColor: Colors.blue,
                            Height: 52.h,
                            Width: 342.w,
                            Fweight: FontWeight.w400,
                            Fsize: 18.sp,
                            bradius: BorderRadius.circular(8))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: CustomText(
                    txt: 'Similar Ads', img: 'assets/images/Vector 64.png'),
              ),
              SizedBox(
                height: 19.h,
              ),
              Buycard(),
              Buycard(),
            ],
          ),
        ),
      ),
    );
  }
}
