import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: .3.sh,
              decoration: BoxDecoration(
                color: Color(0xFFF3F5F7),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 22.r,
                          backgroundColor: Color(0xFFDEDEE8),
                        ),
                        Gap(11.w),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xFF979899)),
                              ),
                              Text(
                                'Amelia Barlow',
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/location.svg',
                                height: 18.h,
                                width: 15.w,
                              ),
                              Text(
                                'My Flat',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF979899),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
