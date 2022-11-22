import 'package:clientproject/Screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Utils/Colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundscreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 65.h,),
            Stack(children: [
              Row(
                children: [
                  SizedBox(width: 20.w,),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: backgroundscreen,
                          border: Border.all(color: Colors.black.withOpacity(0.4),width: 1)
                      ),

                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 10,
                        color: black,
                      ),
                    ),
                  ),
                  SizedBox(width: 80.w,),
                  Text(
                    'REDDROP',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25.sp,
                      fontFamily: 'Aquatico-Regular',
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 39.w, right: 10.w, top: 153.h),
                child: Image.asset('assets/images/background.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 254.w, right: 13.w, top: 160.h),
                child: Image.asset('assets/images/text.png'),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 36.w, right: 16.w, top: 70.h),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HOW MAY I HELP ',
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: 40.sp,
                        fontFamily: 'Aquatico-Regular',
                      ),
                    ),
                    Text(
                      'YOU TODAY',
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: 40.sp,
                        fontFamily: 'Aquatico-Regular',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: 143.w,
                right: 66.w,
              ),
              child: Image.asset('assets/images/sign.png'),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Container(
                height: 150.h,
                child: Row(
                  children: [
                    Icon(Icons.keyboard_voice),
                    Spacer(),
                    SizedBox(
                      // color: Colors.pink,
                      width: 200,
                      height: 80,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(()=> Screen2());
                        },
                        child: Image.asset(
                          'assets/images/voice-View 1 1.png',
                          height: 90,
                          width: 90,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
