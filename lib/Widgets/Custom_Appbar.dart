import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Utils/Colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 0.w),
      child: Container(
        color: backgroundscreen,
        height: 135.h,
        width: 430.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            Spacer(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'REDDROP',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25.sp,
                      fontFamily: 'Aquatico-Regular',
                    ),
                  ),
                  Container(
                    height: 15,
                    // color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          margin: EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        // RichText(
                        //     text: TextSpan(children: [
                        //   TextSpan(
                        //     text: '.',
                        //     style: TextStyle(
                        //       color: Colors.green,
                        //       fontWeight: FontWeight.w500,
                        //       fontSize: 30,
                        //       fontFamily: 'font-family: DM Sans',
                        //     ),
                        //   ),TextSpan(
                        //     text: '\n    Always active',
                        //     style: TextStyle(
                        //       color: black,
                        //       fontWeight: FontWeight.w500,
                        //       fontSize: 12.sp,
                        //       fontFamily: 'font-family: DM Sans',
                        //     ),
                        //   )
                        // ])),
                        Text(
                          '\n    Always active',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            height: .5,
                            fontFamily: 'font-family: DM Sans',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/images/1.png',
              fit: BoxFit.fitHeight,
              height: 73.h,
              width: 84.w,
            ),
          ],
        ),
      ),
    );
  }
}
