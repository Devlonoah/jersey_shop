import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTab(String imagePath,
    {bool isActive = false, void Function()? onTap}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 40.w,
        padding:
            EdgeInsets.only(top: 10.h, bottom: 10.h, right: 9.93.w, left: 9.w),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          border: Border.all(
              width: 1.5.w, color: isActive ? Colors.black : Colors.grey),
        ),
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 20.07.w,
            height: 18.h,
            child: Image.asset(
              imagePath,
              color: isActive ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    ),
  );
}
