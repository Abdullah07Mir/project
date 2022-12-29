import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/chat_screen.dart';
import 'package:list_in_buy_flutter/Widgets/custom_searchbar.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                height: 27.h,
                width: 350.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Messages',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: Color(0xff2A84F2),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              height: 37.h,
              width: 308.w,
              child: SearchBar(
                cradius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              height: 660.h,
              width: 414.w,
              child: ListView.separated(   
                padding:  EdgeInsets.only(top: 10.h, bottom: 15.h,),           
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 74.h,
                      child: ListTile(
                        onTap: () {  
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),),);                      
                        },
                         leading: Image.asset(
                           'assets/images/unsplash_ugsZLJLS56w.png',
                           //fit: BoxFit.cover,
                           height: 50.h,
                           width: 50.w,
                         ),
                         trailing: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               'friday',
                               style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 8.sp),
                             ),
                             SizedBox(
                               height: 5.h,
                             ),
                             Container(
                               height: 15.h,
                               width: 15.w,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(100),
                                 color: Colors.amber,
                               ),
                               child: Text(
                                 '1',
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 10.sp),
                               ),
                             ),
                           ],
                         ),
                         title: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               "Richard Eric",
                               style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 16.sp),
                             ),
                             Text(
                               'Xup man how much last?',
                               style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 12.sp),
                             ),
                           ],
                         )),

                    );
                  },
                   separatorBuilder: (BuildContext context, int index) => Divider(),
                  ),

            ),
          ],
        ),
      ),
    );
  }
}
