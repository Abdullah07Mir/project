import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/advert_screen.dart';
import 'package:list_in_buy_flutter/Screens/edit_profile_screen.dart';
import 'package:list_in_buy_flutter/Screens/favorite_screen.dart';
import 'package:list_in_buy_flutter/Screens/notification.dart';
import 'package:list_in_buy_flutter/Widgets/custom_listtile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 414.w,
            height: 266.h,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 132.h),
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28.sp,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 116.h, left: 50.w),
            child: Container(
              width: 314.w,
              height: 218.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    SizedBox(
                      height: 21.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 107.w),
                          child: Image.asset(
                            
                            'assets/images/unsplash_2EGNqazbAMk.png',
                            height: 100.h,
                            width: 100.w,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 31.w, bottom: 82.h),
                          child: InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile())),
                            child: Icon(
                              Icons.edit_calendar_outlined,
                              color: Color(0xff2A84F2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'James Williams',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      '@jameswilliams',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xff838EA1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 430.h),
            child: Container(
              height: 530.h,
              width: 414.w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile())),
                      child: CustomlistTile(
                        tcolor: Color(0xff2A84F2),
                        color: Color(0xff2A84F2),
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                        txt: 'Account Settings',
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Advert())),
                      child: CustomlistTile(
                        tcolor: Color(0xff838EA1),
                        color: Color(0xff838EA1),
                        icon: Icon(
                          Icons.speaker,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                        txt: 'My Adverts',
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Snotification(),)),
                      child: CustomlistTile(
                        tcolor: Color(0xff838EA1),
                        color: Color(0xff838EA1),
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                        txt: 'Notification',
                      ),
                    ),
                    CustomlistTile(
                      tcolor: Color(0xff838EA1),
                      color: Color(0xff838EA1),
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                      txt: 'Message',
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite(),)),
                      child: CustomlistTile(
                        tcolor: Color(0xff838EA1),
                        color: Color(0xff838EA1),
                        icon: Icon(
                          Icons.system_update_tv_rounded,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                        txt: 'My Save',
                      ),
                    ),
                    CustomlistTile(
                      tcolor: Color(0xff838EA1),
                      color: Color(0xff838EA1),
                      icon: Icon(
                        Icons.published_with_changes_rounded,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                      txt: 'Change password',
                    ),
                    CustomlistTile(
                      tcolor: Color(0xffFFCB47),
                      color: Color(0xffFFCB47),
                      icon: Icon(
                        Icons.login_outlined,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                      txt: 'Sign Out',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
