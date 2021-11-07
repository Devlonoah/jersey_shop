import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const redOnion = Color(0xFFB02B2B);
const deepBlack = Color(0xFF000000);
const dullGrey = Color(0xFF868686);
const fadeGrey = Color(0xFFf0f0f0);
const tabBorderColor = Color(0xFF979797);

const plainWhite = Color(0xFFFFFFFF);
const cardBackground = Color(0xFFF2F2F2);

const background = Color(0xFFFFFFFF);

final boldTextStyle = TextStyle(
  fontSize: 21.sp,
  fontWeight: FontWeight.w600,
);
final headerTextStyle = TextStyle(
  fontSize: 30.sp,
  fontWeight: FontWeight.w500,
);

final subHeaderTextStyle = TextStyle(
    fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: FONT_FAMILY);

final mediumTextStyle = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  fontFamily: FONT_FAMILY,
);

final buttonStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: plainWhite,
    fontFamily: 'Barlow');
final activeTabLabelStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: plainWhite,
    fontFamily: 'Barlow');

final inactiveTabLabelStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: dullGrey,
    fontFamily: 'Barlow');
final cardPriceTextStyle = mediumTextStyle.copyWith(color: redOnion);

const borderColor = Color(0xFFDEDEDE);

const FONT_FAMILY = 'Barlow';

final defaultPadding = 27.w;

final defaultCrossAxisSpacing = 20.w;
final defaultIconSize = 28.r;
final bottomBarHeight = 65.h;
const appBarHeight = 55.0;
