import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/gateway_screen.dart';
import 'package:list_in_buy_flutter/Screens/sell_screen.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
                   Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 110.h,
                      ),
                      Container(
                        width: 110.w,
                      ),
                      Image.asset('assets/images/old-logo-blue 1.png'),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, bottom: 21.h),
                        child: Container(
                          height: 18.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(64, 134, 136, 143)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/Group 3.png'),
                              Text('English'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                
                  Center(
                    child: Text(
                      'Welcome to Listnbuy',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
                    ),
                  ),
                
                ],
              ),
             
              Padding(
                padding: EdgeInsets.only(top: 138.h),
                child: Image.asset('assets/images/pexels-liza-summer-6347709.png', height: 758.h, width: 505.w,),
              ),
            Padding(
                    padding:
                        EdgeInsets.only(top: 575.h, left: 92.w, right: 91.w),
                    child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sell()),
                          ),
                      child: CustomButton(
                          Label: 'Post Ads',
                          color: Colors.blue,
                          txtColor: Colors.white,
                          bgColor: Colors.blue,
                          Height: 56.h,
                      Width: 231.w,
                      Fweight: FontWeight.w600,
                      Fsize: 24.sp,
                      bradius: BorderRadius.circular(19),
                          ),
                    ),
                  ),
                    
                     Padding(
                      padding: EdgeInsets.only(top: 660.h, left: 92.w, right: 91.w),
                      child: InkWell(
                         onTap: () =>  Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Gateway()),
                          ),
                        child: CustomButton(
                              Label: 'Shop',
                              color: Colors.blue,
                              txtColor: Colors.white,
                              bgColor: Colors.blue,
                              Height: 56.h,
                          Width: 231.w,
                          Fweight: FontWeight.w600,
                          Fsize: 24.sp,
                          bradius: BorderRadius.circular(19),
                              ),
                      ),
                    ),
                
              //     Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         SizedBox(
              //           height: 110.h,
              //         ),
              //         Container(
              //           width: 110.w,
              //         ),
              //         Image.asset('assets/images/old-logo-blue 1.png'),
              //         Padding(
              //           padding: EdgeInsets.only(left: 20.w, bottom: 21.h),
              //           child: Container(
              //             height: 18.h,
              //             width: 79.w,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(5),
              //                 color: Color.fromARGB(64, 134, 136, 143)),
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Image.asset('assets/images/Group 3.png'),
              //                 Text('English'),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //     SizedBox(
              //       height: 22.h,
              //     ),
              //     Center(
              //       child: Text(
              //         'Welcome to Listnbuy',
              //         style:
              //             TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
              //       ),
              //     ),
              //     Image.asset('assets/images/pexels-liza-summer-6347709.png', height: 758.h, width: 505.w,),
                  
                
              //   ],
              // ),
            
          ],
        ),
      ),
    );
  }
}
