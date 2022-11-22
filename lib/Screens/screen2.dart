import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/Colors.dart';
import '../Views/ListViewScreen2.dart';
import '../Widgets/Custom_Appbar.dart';
import '../Widgets/timetext.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundscreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          height: 27.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            color: buttonbg,
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                          child: Center(
                            child: Text(
                              'Wed 8:21 AM',
                              style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 19.h, left: 20, right: 45.w),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                      ),
                      child: Container(
                        height: 104.h,
                        width: 355.w,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              gradiant3.withOpacity(1),
                              gradiant4.withOpacity(0.54)
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                        ),
                        child: Text(
                          'Hello, I’m FitBot! 👋 \nI’m your personal sport assistant. How \ncan I help you?',
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 12.h, left: 338.w, right: 60.w),
                    child: TimeText(),
                  ),
                  Container(
                    width: 296.w,
                    height: 38.h,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        'Select the topic or write your question \n                        below.',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'DM Sans',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListView_Screen2(),
                  Padding(
                    padding: EdgeInsets.only(top: 37.h, left: 208, right: 17.w),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                          topLeft: Radius.circular(18),
                        ),
                      ),
                      child: Container(
                        height: 68.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                gradiant3.withOpacity(1),
                                gradiant4.withOpacity(1)
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.r),
                                bottomLeft: Radius.circular(20.r),
                                topLeft: Radius.circular(20.r))),
                        child: Center(
                          child: Text(
                            'No, I’m hero to understand \nmy body better',
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 3.h, left: 369.w, right: 29.w),
                    child: TimeText(),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Container(
                height: 53.h,
                width: 368.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black26,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    // fillColor: Color(0xffFFFFFF),
                    // filled: true,
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.cancel_outlined,),
                    suffixIcon: Row(
                      children: [
                        Spacer(),
                        Text("|",style: TextStyle(color: Color(0xffA0A0A0),fontSize: 20.sp),),
                        SizedBox(width: 10.w,),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black
                          ),
                          child: Image(
                            image: AssetImage('assets/images/fav.png'),
                            color: white,
                            height: 15.h,
                            width: 15.w,
                            // fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 5.w,)
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
