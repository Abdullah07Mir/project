import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pagedisplay extends StatefulWidget {
  const Pagedisplay ({super.key});

  @override
  State<Pagedisplay> createState() => _PagedisplayState();
}

class _PagedisplayState extends State<Pagedisplay> {
  PageController controller=PageController();
   List<Widget> list=<Widget>[
     Center(child: Image.asset('assets/images/Rectangle 93.png')),
     Center(child: Image.asset('assets/images/Rectangle 94.png')),
     Center(child: Image.asset('assets/images/Rectangle 93.png')),
     Center(child: Image.asset('assets/images/Rectangle 94.png')),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) { 
    return  SizedBox(
              height: 238.h,
              width: double.maxFinite,
              child: PageView.builder(
                  itemCount: list.length,
                  controller: controller,
                  onPageChanged: (index) {
                   currentIndex = index;
                  },
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        // Image.asset(controller.imagesList[index]),
                    list[index],
                        // Center(
                        //   child: Image.network(
                        //       ),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 9.h,
                            right: 16.w,
                          ),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                onTap: () => controller
                                    .jumpToPage(currentIndex + 1),
                                child: Container(
                                  height: 24.h,
                                  width: 24.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff3A456E),
                                  ),
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.w,
                          ),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () =>
                                    controller.jumpToPage(index - 1),
                                child: Container(
                                  height: 24.h,
                                  width: 24.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff3A456E),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 15.w,
                          ),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () =>
                                    controller.jumpToPage(index + 1),
                                child: Container(
                                  height: 24.h,
                                  width: 24.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff3A456E),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              )),
                        )
                      ],
                    );
                  }),
            );
  }
}