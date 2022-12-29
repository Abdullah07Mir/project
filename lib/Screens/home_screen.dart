import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/filter.dart';
import 'package:list_in_buy_flutter/Widgets/custom_searchbar.dart';
import 'package:list_in_buy_flutter/Widgets/custom_text.dart';
import 'package:list_in_buy_flutter/Widgets/custom_textfield.dart';
import '../Screens/notification.dart';
import '../Widgets/custom_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List icons = [
    Icons.electric_bike,
    Icons.settings_suggest_outlined,
    Icons.house_sharp,
    Icons.card_travel,
    Icons.shopping_cart,
    Icons.electric_bike,
    Icons.settings_suggest_outlined,
    Icons.house_sharp,
    Icons.card_travel,
    Icons.shopping_cart
  ];
  List txt = [
    'MoterBike',
    'Parts',
    'RealEstate',
    'Jobs',
    'Gen Mart',
    'MoterBike',
    'Parts',
    'RealEstate',
    'Jobs',
    'Gen Mart',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 36.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 136.w),
                      child: Image.asset(
                        'assets/images/old-logo-blue 1.png',
                        height: 20.h,
                        width: 78.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 31.w),
                      child: InkWell(
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
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
                  height: 42.h,
                ),
                SizedBox(
                  height: 57.h,
                  width: 469.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icons.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: EdgeInsets.only(right: 21.w),
                      child: Column(
                        children: [
                          Container(
                            height: 40.69.h,
                            width: 40.69.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.blue),
                                color: Colors.blue),
                            child: Icon(
                              icons[index],
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            txt[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 8.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                CustomText(
                  img: 'assets/images/Vector 64.png',
                  txt: 'Premium Plus Ads',
                  seeall: 'See All',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomListview(),
                SizedBox(
                  height: 38.h,
                ),
                CustomText(
                  img: 'assets/images/Vector 64.png',
                  txt: 'Premium Plus Ads',
                  seeall: 'See All',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomListview(),
                SizedBox(
                  height: 38.h,
                ),
                CustomText(
                  img: 'assets/images/Vector 64.png',
                  txt: 'Basic Plus Ads',
                  // seeall: 'See All',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomListview(),
                SizedBox(
                  height: 38.h,
                ),
                CustomText(
                  img: 'assets/images/Vector 64.png',
                  txt: 'Basic Plus Ads',
                  // seeall: 'See All',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomListview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
