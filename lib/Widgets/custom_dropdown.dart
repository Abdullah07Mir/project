import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatefulWidget {
 List <String> Items;
 var wdth;
 Color color;
 Color bordercolor;
 CustomDropdown({required this.Items,required this.wdth, required this.color, required this.bordercolor});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
 
  // List of items in our dropdown menu
 
  @override
  Widget build(BuildContext context) {
  var dropdownvalue = widget.Items[0] ; 
    return Container(
      width: widget.wdth,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.color,
        border: Border.all(color: widget.bordercolor,),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: DropdownButton(
              isExpanded: true,
               underline: Container(),
              // Initial Value
              value: dropdownvalue,
               
              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down_rounded, color: Colors.blue,size: 40,),   
               
              // Array list of items
              items: widget.Items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items, style: TextStyle(color: Color.fromRGBO(131, 142, 161, 0.5)),),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}