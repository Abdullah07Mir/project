import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  var cradius;
  SearchBar({
    //  required this.hText,
    required this.cradius,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Color(0xffEDF1FF),
        borderRadius: cradius,
      ),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xff2A84F2),
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(
                color: Color(0xff838EA1),
              ),
              border: InputBorder.none),
        ),
      ),
    ));
  }
}
