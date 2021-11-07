import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../fake_datas.dart';
import '../../widget/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatelessWidget {
  static String id = 'Cart';
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: cardBackground,
      body: CartBody(),
    );
  }
}

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: Column(
          children: [
            addVerticalSpace(39 + appBarHeight),
            Text('Cart', style: headerTextStyle),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => addVerticalSpace(30),
              shrinkWrap: true,
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                final _currentProduct = categoryList[index];
                return Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      height: 120.h,
                      color: Colors.white,
                      child: Row(children: [
                        SizedBox(width: 113.w),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 18.h, bottom: 12.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_currentProduct.productName!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: mediumTextStyle.copyWith(
                                        fontSize: 18.sp)),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'x1',
                                        style: mediumTextStyle.copyWith(
                                            fontSize: 16.sp,
                                            color: Colors.grey),
                                      ),
                                      Text('\$${_currentProduct.price}',
                                          style: cardPriceTextStyle)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                    Positioned(
                      left: 16.w,
                      child: FractionalTranslation(
                        translation: Offset(0, -0.00032.sh),
                        child: Image.asset(
                          _currentProduct.imagePath,
                          height: 83.h,
                          width: 80.w,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
            addVerticalSpace(bottomBarHeight)
          ],
        ),
      ),
    );
  }
}
