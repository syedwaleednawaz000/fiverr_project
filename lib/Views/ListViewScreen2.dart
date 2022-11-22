import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Model_screen2.dart';
import '../Utils/Colors.dart';

class ListView_Screen2 extends StatelessWidget {
  const ListView_Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 200.h,
        child: ListView.builder(
          itemCount: Model1.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          7.r,
                        ),
                      ),
                      elevation: 5,
                      child: Container(
                        width: 165.w,
                        height: 199.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.pink.shade100,
                              width: 2.5,
                            ),
                            // gradient: LinearGradient(
                            //   begin: Alignment.centerLeft,
                            //   end: Alignment.centerRight,
                            //   colors: [
                            //     grediant1.withOpacity(1),
                            //     grediant2.withOpacity(.54)
                            //   ],
                            // ),
                            borderRadius: BorderRadius.circular(7.r)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 34.w, right: 34.w, top: 7.h),
                              child: Image.asset(
                                Model1[index].image,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 17.w, right: 10.w, top: 7.h),
                                child: Text(
                                  "No, I'm hero to understand my body better",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp,
                                    fontFamily: 'DM Sans',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
