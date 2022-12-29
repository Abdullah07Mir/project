import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/home_screen.dart';
import 'package:list_in_buy_flutter/Screens/notification.dart';
import 'package:list_in_buy_flutter/Widgets/custom_bottombar.dart';

class Gateway extends StatelessWidget {
  const Gateway({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 65.h,
          ),
          Center(
            child: Text(
              'Welcome to the Gateway!',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp,
                  color: Color(0xff3A456E)),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 55.w),
              Text(
                'Choose a category ',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color(0xff838EA1)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Snotification(),)),
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
            height: 45.h,
          ),
          Expanded(
            child:Padding(
              padding: EdgeInsets.only(left: 37.w, right: 37.w,),
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 20,
                 mainAxisSpacing: 20),
              itemCount: 8,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                   onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomBottombar(),
                          ),
                        ),
                  child: Container(
                      child: Card(
                        elevation: 5,
                        shadowColor: Colors.blue,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/Rectangle 187.png",
                              ),
                              fit: BoxFit.fill),
                        ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 120.h,
                              ),
                              child: Container(
                              
                                height: 40.h,
                                width: 150.w,
                                
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: Colors.white,
                                //  border: Border( bottom: BorderSide( color: Colors.blue),),
                                ),
                                child: Center(child: Text('Vehicles')),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                );
              }),
            ), 
          )
        ],
      ),
    );
  }
}
