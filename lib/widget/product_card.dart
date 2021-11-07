import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constants.dart';
import 'spacing.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, this.onTap, required this.imagePath})
      : super(key: key);

  final void Function()? onTap;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          addVerticalSpace(10),
          Text(
            'Chelsea F.C. 2020/21 Stadium Home',
            style: mediumTextStyle,
          ),
          addVerticalSpace(4),
          Text('\$67', style: cardPriceTextStyle)
        ],
      ),
    );
  }
}
