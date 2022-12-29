import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:list_in_buy_flutter/Screens/byfiltered.dart';
import 'package:list_in_buy_flutter/Widgets/cstm_fieldinrow.dart';
import 'package:list_in_buy_flutter/Widgets/custom_button.dart';
import 'package:list_in_buy_flutter/Widgets/custom_dropdown.dart';
import 'package:list_in_buy_flutter/Widgets/custom_text.dart';
import 'package:list_in_buy_flutter/Widgets/custom_textfield.dart';

class Filtered extends StatefulWidget {
  @override
  State<Filtered> createState() => _FilteredState();
}

class _FilteredState extends State<Filtered> {
  int _value = 6;

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
                'Filter',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Colors.black),
              ),
              Text(
                'Clear All',
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
              Text(
                'Select Category',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
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
              Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Abule Egba', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Sort Order',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: [
                    'Newest First',
                    'Oldest First',
                    'Lowest Price First',
                    'Highest Price First'
                  ],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Price',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Fieldinrow(maxtxt: 'max', mintxt: 'min'),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Make',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose Make', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Model',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose Model', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Make',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose Make', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Year of manufacture',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    divisions: 10,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.grey,
                    label: _value.round().toString(),
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    }),
              ),
              SizedBox(
                height: 15.h,
              ),
              Fieldinrow(mintxt: 'min 1995', maxtxt: 'max 2022'),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Title Status',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose title status', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Condition',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose condition', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Fuel',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose fuel', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Engine Size',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose engine size', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Transmission',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose transmission', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Body',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose body', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Color',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose color', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Mileage, km',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Fieldinrow(mintxt: 'min', maxtxt: 'max'),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Mileage, km',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose drivetrain', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Registered Car',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomDropdown(
                  Items: ['Choose registered car', 'a', 'b', 'c'],
                  wdth: 370.w,
                  bordercolor: Color(0xffF3F4F8),
                  color: Color(0xffF3F4F8)),
              SizedBox(
                height: 72.h,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Byfiltered())),
                child: CustomButton(
                  Label: 'Save',
                  color: Colors.blue,
                  txtColor: Colors.white,
                  bgColor: Colors.blue,
                  Height: 52.h,
                  Width: 350.w,
                  Fweight: FontWeight.w500,
                  Fsize: 18.sp,
                  bradius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
