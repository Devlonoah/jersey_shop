import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import '../../cubit/page_cubit_cubit.dart';
import '../../fake_datas.dart';
import '../cart/cart.dart';
import '../home/home.dart';
import '../search/search.dart';
import '../../widget/custom_tab.dart';
import '../../widget/spacing.dart';

class PageManager extends StatelessWidget {
  static String id = 'Pagemanager';
  const PageManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const PageManagerBody(),
      drawer: _drawer(),
    );
  }
}

class PageManagerBody extends StatelessWidget {
  const PageManagerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _pageDisplay(),
        _customNavBar(),
      ],
    );
  }

  BlocBuilder<PageCubitCubit, PageCubit> _pageDisplay() {
    return BlocBuilder<PageCubitCubit, PageCubit>(
      builder: (context, state) {
        return IndexedStack(
          index: state.index,
          children: _pageList,
        );
      },
    );
  }

  BlocBuilder<PageCubitCubit, PageCubit> _customNavBar() {
    return BlocBuilder<PageCubitCubit, PageCubit>(
      builder: (context, state) {
        return Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 55.h,
            width: double.infinity,
            color: Colors.white54,
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: tabImages
                  .map(
                    (e) => customTab(
                      e,
                      isActive: state.index ==
                          tabImages.indexWhere((element) => element == e),
                      onTap: () => context.read<PageCubitCubit>().changePage(
                            tabImages.indexWhere((element) => element == e),
                          ),
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

final _pageList = [
  const Home(),
  const Search(),
  const Cart(),
  const Scaffold(),
  const Scaffold(),
];

Row _drawerHeader() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        child: Image.asset(
          'assets/images/jersey_lady.png',
          fit: BoxFit.cover,
          height: 60.h,
          width: 60.w,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Opeyemi Lawal',
            style: subHeaderTextStyle.copyWith(fontSize: 18.sp),
          ),
          Text(
            'View Profile',
            style: mediumTextStyle.copyWith(color: dullGrey),
          ),
        ],
      )
    ],
  );
}

Drawer _drawer() {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        addVerticalSpace(100.h),
        _drawerHeader(),
        addVerticalSpace(112),
        ListTile(
          onTap: () {},
          leading: customTab('assets/tab_icon/chat.png'),
          title: Text(
            'Support',
            style: subHeaderTextStyle.copyWith(fontSize: 18.sp),
          ),
        )
      ],
    ),
  );
}
