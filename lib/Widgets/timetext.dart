import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/Colors.dart';

class TimeText extends StatelessWidget {
  const TimeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.w,
      height: 16.h,
      child: Text(
        '12:40',
        style: TextStyle(
          color: black,
          fontWeight: FontWeight.w500,
          fontSize: 12.sp,
          fontFamily: 'DM Sans',
        ),
      ),
    );
  }
}
