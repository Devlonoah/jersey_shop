import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../categoryview/category_view.dart';
import '../../../widget/spacing.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335.h,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, _) {
          return addHorizontalSpace(45);
        },
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, _) {
          return _carouselCard(context, _);
        },
      ),
    );
  }

  Widget _carouselCard(BuildContext context, int _) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        GestureDetector(
          onTap: () => _navigateToCategoryView(context),
          child: Ink.image(
            fit: BoxFit.cover,
            width: 270.w,
            height: 335.h,
            image: AssetImage(
              _ == 0
                  ? 'assets/images/carousel_img$_.png'
                  : 'assets/images/carousel_img1.jpeg',
            ),
          ),
        ),
        Positioned(
          bottom: 31.h,
          right: 0,
          child: Material(
            color: Colors.white,
            child: InkWell(
              onTap: () => _navigateToCategoryView(context),
              child: SizedBox(
                height: 78.h,
                width: 170.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Women\'s',
                            style: boldTextStyle.copyWith(fontSize: 21.sp),
                          ),
                          Text(
                            'Kits & Jersey',
                            style: mediumTextStyle.copyWith(color: dullGrey),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/icons/arrow_icon.png',
                        width: 30.w,
                        height: 10.h,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  _navigateToCategoryView(BuildContext context) =>
      Navigator.pushNamed(context, CategoryView.id);
}
