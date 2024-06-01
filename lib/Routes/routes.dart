
import 'package:exam1/screen/Detailpage/detail.dart';
import 'package:exam1/screen/cartpage/cartpage.dart';
import 'package:exam1/screen/homepage/home_page.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static String home_page = '/';
  static String detail_page = 'detail_page';
  static String cart_page = 'cart_page';


  static Map<String, WidgetBuilder> myRoutes = {
     home_page: (context) => const Home_page(),
     detail_page: (context) => const Detail_page(),
     cart_page: (context) => const Cart(),
  };
}