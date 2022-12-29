import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';
import 'package:list_in_buy_flutter/Widgets/custom_buytext.dart';
import 'package:list_in_buy_flutter/Widgets/custom_checkbox.dart';
import 'package:list_in_buy_flutter/Widgets/custom_dropdown.dart';
import 'package:list_in_buy_flutter/Widgets/custom_simpletxtfield.dart';
import 'package:list_in_buy_flutter/Widgets/custom_txtfield.dart';

class Sell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 127.h,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              Text(
                'Post New Ad',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Colors.black),
              ),
              Text(
                'clear',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xffEB5757)),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Category'),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Category', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Location'),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Location', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Add Photo'),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 162.h,
                width: 195.w,
                child: DottedBorder(
                  dashPattern: [7, 4],
                  color: Color(0xff2A84F2),
                  strokeWidth: 1,
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 42.h,
                      ),
                      Icon(
                        Icons.image_outlined,
                        color: Color(0xff838EA1),
                      ),
                      Center(
                        child: Container(
                          height: 42.h,
                          width: 147.w,
                          child: Text(
                            'Add at least 5 photo for this category.',
                            style: TextStyle(
                                color: Color(0xff838EA1),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 30.h,
                width: 213.w,
                child: Text(
                  'Each picture must not exceed 5 Mb Supported formats are *.jpg, *.gif and *.png',
                  style: TextStyle(
                      color: Color(0xff838EA1),
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Make'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose Make', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Please Choose make',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xffEB5757)),
              ),
              SizedBox(
                height: 12.h,
              ),
              BuyText(txt: 'Model'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose Model', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Year of manufacture'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose year of manufacture', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Title Status'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose title status', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Color'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose color', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Condition'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose condition', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Transmission'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose transmission', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Mileage (km)'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose mileage (km)', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Registered Car'),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  CustomCheckbox(),
                  Text(
                    'Yes',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Color(0xff838EA1)),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomCheckbox(),
                  Text(
                    'No',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Color(0xff838EA1)),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Body'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose body', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Fuel'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose fuel', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Engine Size'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose engine size', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Drivetrain'),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                  Items: ['Choose drivetrain', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Description'),
              SizedBox(
                height: 12.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF3F4F8),
                  border: Border.all(
                    color: Color(0xffF3F4F8),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Description",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(131, 142, 161, 0.5)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 76.h,
              ),
              BuyText(txt: 'Price'),
              SizedBox(
                height: 12.h,
              ),
              SimpleTxtField(txt: 'Price'),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  CustomCheckbox(),
                  Text(
                    'Negotiable',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              BuyText(txt: 'Name'),
              SizedBox(
                height: 12.h,
              ),
              SimpleTxtField(txt: 'Name'),
              SizedBox(
                height: 32.h,
              ),
              BuyText(txt: 'Phone Number'),
              SizedBox(
                height: 12.h,
              ),
              SimpleTxtField(txt: 'phone number'),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Promote Your Ads',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'To post your ad please choose one of the option',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xff838EA1)),
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomButton(
                  Label: 'Premium Plus Ad',
                  color: Colors.blue,
                  txtColor: Colors.white,
                  bgColor: Colors.blue,
                  Height: 75.h,
                  Width: 350.w,
                  Fweight: FontWeight.w400,
                  Fsize: 22.sp,
                  bradius: BorderRadius.circular(5)),
              SizedBox(
                height: 45.h,
              ),
              CustomButton(
                  Label: 'Premium Ad ',
                  color: Colors.blue,
                  txtColor: Colors.blue,
                  bgColor: Colors.white,
                  Height: 75.h,
                  Width: 350.w,
                  Fweight: FontWeight.w400,
                  Fsize: 22.sp,
                  bradius: BorderRadius.circular(5)),
              SizedBox(
                height: 45.h,
              ),
              CustomButton(
                  Label: 'Basic Ad ',
                  color: Colors.blue,
                  txtColor: Colors.blue,
                  bgColor: Colors.white,
                  Height: 75.h,
                  Width: 350.w,
                  Fweight: FontWeight.w400,
                  Fsize: 22.sp,
                  bradius: BorderRadius.circular(5)),
              SizedBox(
                height: 45.h,
              ),
              InkWell(
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                      content: Container(
                    height: 328.h,
                    width: 324.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 134.h,
                        ),
                        Text(
                          'Success',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28.sp,
                              color: Color(0xff2A84F2)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Thank you!',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.sp,
                              color: Color(0xff2A84F2)),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: 214.w,
                          height: 48.h,
                          child: Text(
                            'You have been enrolled for Premium PLuse Ad',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Color(0xff2A84F2)),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                child: CustomButton(
                    Label: 'Post Ad',
                    color: Colors.blue,
                    txtColor: Colors.white,
                    bgColor: Colors.blue,
                    Height: 52.h,
                    Width: 342.w,
                    Fweight: FontWeight.w400,
                    Fsize: 22.sp,
                    bradius: BorderRadius.circular(5)),
              ),
              SizedBox(
                height: 37.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
