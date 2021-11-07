import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import '../../widget/spacing.dart';

class Search extends StatelessWidget {
  static String id = ' Seacrh';
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchBody();
  }
}

class SearchBody extends StatefulWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          addVerticalSpace(15),
          _textInput(),
          _tabBar(),
          _tabBarView(),
          addVerticalSpace(bottomBarHeight)
        ],
      ),
    );
  }

  Expanded _tabBarView() {
    return Expanded(
      child: TabBarView(
          controller: tabController,
          physics: const BouncingScrollPhysics(),
          children: [
            _filterList(),
            const Scaffold(),
          ]),
    );
  }

  FittedBox _tabBar() {
    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(
        width: 207.w,
        height: 50.h,
        child: TabBar(
            controller: tabController,
            indicatorColor: tabBorderColor,
            unselectedLabelColor: dullGrey,
            unselectedLabelStyle:
                inactiveTabLabelStyle.copyWith(color: Colors.red),
            labelStyle: subHeaderTextStyle.copyWith(color: deepBlack),
            labelColor: deepBlack,
            tabs: _tabName
                .map((e) => Tab(
                      text: e,
                    ))
                .toList()),
      ),
    );
  }

  Align _textInput() {
    return Align(
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Container(
          height: 50.h,
          width: 350.w,
          color: fadeGrey,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10.w),
          child: TextField(
            style: buttonStyle.copyWith(color: deepBlack),
            decoration: InputDecoration.collapsed(
              hintStyle:
                  buttonStyle.copyWith(color: deepBlack.withOpacity(0.3)),
              hintText: 'Search Jersey',
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar() => AppBar();

  _filterList() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: filterList.length,
        itemBuilder: (contex, index) {
          final _filterCat = filterList[index];
          // return const Tex
          // t('Hello');
          return ListTile(
            onTap: () {},
            leading: Container(
              color: fadeGrey,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.1.w, vertical: 8.01.h),
                child: Image.asset(
                  _filterCat.iconPath,
                  height: 30.h,
                  width: 30.w,
                ),
              ),
            ),
            title: Text(
              _filterCat.title,
              style: mediumTextStyle,
            ),
            trailing: Text(
              '${_filterCat.productCounts}>',
              style: mediumTextStyle.copyWith(color: dullGrey),
            ),
          );
        });
  }
}

var _tabName = [
  'Jersey',
  'Kit',
];

const filterList = [
  SearchFilter('assets/searchfilter/football-uniform.png', 'All', '12,500'),
  SearchFilter('assets/searchfilter/Group 2.png', 'Football(Soccer)', '12,500'),
  SearchFilter('assets/searchfilter/Shape-1.png', 'Basketball', '12,500'),
  SearchFilter('assets/searchfilter/icon.png', 'All', '12,500'),
  SearchFilter('assets/searchfilter/Shape.png', 'Rugby', '2,256'),
  SearchFilter('assets/searchfilter/badminton.png', 'Badminton', '1,934'),
  SearchFilter(
      'assets/searchfilter/football-uniform.png', 'Tennis', '1,090,500'),
  SearchFilter('assets/searchfilter/shape.png', 'Hockey', '978')
];

class SearchFilter {
  final String iconPath;
  final String title;
  final String productCounts;

  const SearchFilter(this.iconPath, this.title, this.productCounts);
}
