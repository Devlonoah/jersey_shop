// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/widget/spacing.dart';

class Details extends StatelessWidget {
  static String id = 'Details';
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _imagePAth = (ModalRoute.of(context)?.settings.arguments) as String;
    return DetailsBody(_imagePAth);
  }
}

@immutable
class DetailsBody extends StatelessWidget {
  final String imagePath;
  const DetailsBody(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SizedBox(
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [
            _productImage(),
            _productDetailsCard(),
            _favouriteCard(),
          ],
        ),
      ),
    );
  }

  Image _productImage() {
    return Image.asset(
      imagePath,
      width: double.infinity,
      fit: BoxFit.cover,
      height: 520.h,
    );
  }

  Positioned _favouriteCard() {
    return Positioned(
      bottom: 288.h,
      right: 27.w,
      left: 329.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: plainWhite,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              height: 58.w,
              width: 58.w,
              child: Icon(
                Icons.favorite_outline,
                size: defaultIconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned _productDetailsCard() {
    return Positioned(
      right: 0.0,
      left: 0.0,
      bottom: 0.0,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black12,
                  ],
                  stops: [
                    0.09,
                    0.7
                  ]),
              color: dullGrey.withOpacity(0.2),
            ),
            height: 315.h,
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(28),
                Text(
                  '\$55.26',
                  style: cardPriceTextStyle.copyWith(
                      fontSize: 21.sp, fontWeight: FontWeight.w500),
                ),
                addVerticalSpace(10),
                Text(
                  'Nike F.C. p’[ Tie-Dye Football Shirt',
                  style: subHeaderTextStyle.copyWith(fontSize: 21.sp),
                ),
                addVerticalSpace(44.h),
                Text(
                  'The Nike F.C. Shirt blends 2 summer favourites: festivals and football. Soft, sweat-wicking fabric and a mesh racerback help you stay comfortable on the pitch or in the crowd.',
                  style: mediumTextStyle,
                ),
                addVerticalSpace(28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: BeveledRectangleBorder(
                              side:
                                  BorderSide(width: 1.2.w, color: borderColor)),
                          minimumSize: Size(170.w, 60.h),
                          fixedSize: Size(170.w, 60.h),
                          maximumSize: Size(170.w, 60.h)),
                      onPressed: () {},
                      child: DropdownButton(
                          hint: Text(
                            'Choose Size',
                            style: buttonStyle.copyWith(color: deepBlack),
                          ),
                          dropdownColor: plainWhite,
                          onChanged: (x) {},
                          underline: const SizedBox.shrink(),
                          items: sizeList
                              .map((e) => DropdownMenuItem<String>(
                                    child: Text(e.toString(),
                                        style: buttonStyle.copyWith(
                                            color: deepBlack)),
                                    value: e,
                                  ))
                              .toList()),
                    ),
                    const CustomButton(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // height: 20.h,
  //                 width: 22.70.w,

  //---------------
  // height: 58.h,
  //             width: 58.w,
  AppBar _appBar() {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: defaultPadding),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.shoppingBag,
              size: defaultIconSize,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: const BeveledRectangleBorder(),
          backgroundColor: deepBlack,
          minimumSize: Size(170.w, 60.h),
          fixedSize: Size(170.w, 60.h),
          maximumSize: Size(170.w, 60.h)),
      onPressed: () {},
      child: Text('Add to Bag', style: buttonStyle),
    );
  }
}

final sizeList = [
  'XS(UK 1-2)',
  'XS(UK 2-3)',
  'XS(UK 3-4)',
  'XS(UK 4-5)',
];
