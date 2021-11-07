import 'package:flutter/cupertino.dart';
import 'pages/cart/cart.dart';
import 'pages/categoryview/category_view.dart';
import 'pages/details/details.dart';
import 'pages/home/home.dart';
import 'pages/page_manager/page_manager.dart';
import 'pages/search/search.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  Home.id: (context) => const Home(),
  Details.id: (context) => const Details(),
  Search.id: (context) => const Search(),
  CategoryView.id: (context) => const CategoryView(),
  PageManager.id: (context) => const PageManager(),
  Cart.id: (context) => const Cart(),
};
