import 'package:flutter/material.dart';

class CustomTextfiled extends StatelessWidget {
  String HintText;
  bool obsecure;
  Icon? icon;
  Color color;
  Color? bgcolor;
  FontWeight? fontweight;
  var fntsize;
  CustomTextfiled(
      {required this.HintText,
      required this.obsecure,
      this.icon,
      required this.color,
      this.bgcolor,
      this.fontweight,
      this.fntsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
      ),
      child: TextFormField(
        obscureText: obsecure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: color),
          ),
          hintText: HintText,
          hintStyle: TextStyle(fontWeight: fontweight, fontSize: fntsize),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
