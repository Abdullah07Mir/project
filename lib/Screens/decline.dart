import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/advert_screen.dart';
import 'package:list_in_buy_flutter/Screens/closed_screen.dart';
import 'package:list_in_buy_flutter/Screens/review_screen.dart';

class Decline extends StatelessWidget {
  const Decline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 120.h,
         automaticallyImplyLeading: false,
        
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.black,)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 42.w),
              child: Text.rich(
                TextSpan(
                  text: 'My Adverts :',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <InlineSpan>[
                    TextSpan(
                      text: ' Decline (0)',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2A84F2)),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
                      child: InkWell(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Advert())),
                        child: Text("Active (2)")),
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
                                  builder: (context) => Decline())),
                        child: Text("Decline (0)")),
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
      body: Center(
        child: Column(
          children: [
          SizedBox(height: 150.h,),
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
                SizedBox(height: 29.h,),
                Text('Hurry', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.sp),),
                SizedBox(height: 6.sp,),
                Text('No Advert Decline', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),),
        ],),
      ),
    );
  }
}