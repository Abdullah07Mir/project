import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/closed_screen.dart';
import 'package:list_in_buy_flutter/Screens/decline.dart';
import 'package:list_in_buy_flutter/Screens/review_screen.dart';

class Advert extends StatelessWidget {
  const Advert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 120.h,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(top: 25.h),
          child: Text.rich(
            TextSpan(
              text: 'My Adverts :',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                  text: ' Active (2)',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2A84F2)),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color(0xff2A84F2),
                ),
                onSelected: (value) {
                  // your logic

                  // setState(() {
                  //   selectedItem = value.toString();
                  // });
                  // print(value);
                  //  Navigator.pushNamed(context, value.toString());
                },
                itemBuilder: (BuildContext bc) {
                  return [
                    PopupMenuItem(
                      child: Text("Active (2)"),
                      value: '/Active (2)',
                    ),
                    PopupMenuItem(
                      child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Reviewing())),
                          child: Text("Reviewing (2)")),
                      value: '/Reviewing (2)',
                    ),
                    PopupMenuItem(
                      child: InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Decline(),
                                ),
                              ),
                          child: Text("Decline (0)"),),
                      value: '/Decline (0)',
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Closed(),
                                ),
                              ),
                        child: Text("Closed (3)")),
                      value: '/Closed (3)',
                    )
                  ];
                }),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      width: 382.w,
                      height: 163.h,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.w),
                            child: Container(
                                height: 119.h,
                                width: 102.w,
                                color: Color(0xffF3F4F8),
                                child: Image.asset(
                                  'assets/images/Apex-Dynamics.png',
                                  width: 93.w,
                                  height: 61.h,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w, top: 18.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 250.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Gearbox',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 98.w),
                                        child: Icon(
                                          Icons.clear,
                                          size: 20.sp,
                                          color: Color(0xff838EA1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Container(
                                  height: 30.h,
                                  width: 166.w,
                                  child: Text(
                                    'AFX Precision Planetary Gearbox',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        color: Color(0xff838EA1)),
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  '\$173.41',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: Color(0xff2A84F2)),
                                ),
                                SizedBox(
                                  height: 22.h,
                                ),
                                Container(
                                  width: 250.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xff838EA1),
                                        size: 20.sp,
                                      ),
                                      Text(
                                        'USA',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp,
                                            color: Color(0xff838EA1)),
                                      ),
                                      Icon(
                                        Icons.diamond_outlined,
                                        color: Color(0xff838EA1),
                                        size: 20.sp,
                                      ),
                                      Text(
                                        'Min Bid \$20,025',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp,
                                            color: Color(0xff838EA1)),
                                      ),
                                      Icon(
                                        Icons.diamond_outlined,
                                        color: Color(0xff838EA1),
                                        size: 20.sp,
                                      ),
                                      Text(
                                        'Max Bid \$30,25',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp,
                                            color: Color(0xff838EA1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
