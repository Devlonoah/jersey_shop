import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../fake_datas.dart';
import '../details/details.dart';
import 'widget/carousel.dart';
import '../search/search.dart';
import '../../widget/product_card.dart';
import '../../widget/spacing.dart';

class Home extends StatelessWidget {
  static String id = 'Home';

  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Carousel(),
            addVerticalSpace(40),
            Text(
              'Trending',
              style: subHeaderTextStyle.copyWith(fontSize: 24.sp),
            ),
            addVerticalSpace(25),
            _trendingGrid(),
            //
            addVerticalSpace(bottomBarHeight)
          ]),
        ),
      ),
    );
  }

  GridView _trendingGrid() {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: defaultCrossAxisSpacing,
        ),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          final img = categoryList[index].imagePath;
          return ProductCard(
            imagePath: img,
            onTap: () => _navigateToDetailsPage(context, img),
          );
        });
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: Icon(
      //     Icons.menu,
      //     color: deepBlack,
      //     size: defaultIconSize,
      //   ),
      // ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 27.0.w),
          child: IconButton(
            onPressed: () => _navigateToSearch(context),
            icon: Icon(
              Icons.search,
              size: defaultIconSize,
              color: deepBlack,
            ),
          ),
        )
      ],
    );
  }
}

_navigateToSearch(BuildContext context) {
  Navigator.pushNamed(context, Search.id);
}

_navigateToDetailsPage(BuildContext context, String path) {
  Navigator.pushNamed(context, Details.id, arguments: path);
}

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('New Release', style: headerTextStyle),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Text('View All', style: subHeaderTextStyle),
              ),
            )
          ],
        ),
        addVerticalSpace(4),
        Text(
          '2020/2021',
          style: mediumTextStyle.copyWith(color: dullGrey),
        ),
        addVerticalSpace(25),
        const ImageCarousel(),
      ],
    );
  }
}
