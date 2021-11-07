import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../fake_datas.dart';
import '../details/details.dart';
import '../../widget/product_card.dart';
import '../../widget/spacing.dart';

class CategoryView extends StatelessWidget {
  static String id = 'CategoryView';
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Women\'s', style: headerTextStyle),
            addVerticalSpace(20),
            _productGrid()
          ],
        ),
      ),
    );
  }

  Widget _productGrid() {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
          ),
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            final _imgPath = categoryList[index].imagePath;

            return ProductCard(
              imagePath: _imgPath,
              onTap: () => _navigateToDetails(context, _imgPath),
            );
          }),
    );
  }

  _navigateToDetails(BuildContext context, String imagePath) {
    Navigator.pushNamed(context, Details.id, arguments: imagePath);
  }
}
