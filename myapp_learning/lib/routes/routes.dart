import 'package:flutter/material.dart';
import 'package:myapp_learning/screens/categories_screen.dart';
import 'package:myapp_learning/screens/home_screen.dart';
import 'package:myapp_learning/screens/login_screen.dart';
import 'package:myapp_learning/screens/map_screen.dart';
import 'package:myapp_learning/screens/marvel_page.dart';
import 'package:myapp_learning/screens/register_screen.dart';
import 'package:myapp_learning/screens/return_screen.dart';
import 'package:myapp_learning/screens/service_screen.dart';
import 'package:myapp_learning/screens/shop_screen.dart';
import 'package:myapp_learning/screens/tap_bar_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'loginPage': (context) => const LoginScreen(),
  'registerPage': (context) => const RegisterScreen(),
  'homePage': (context) => const HomeScreen(),
  'shopPage': (context) => const ShopScreen(),
  'marvelPage': (context) => MarvelPage(),
  'tabbarPage': (context) => const TapBarPage(),
  'servicePage': (context) => const ServiceScreen(),
  'MapPage': (context) => const MapScreen(),
  'returnPage': (context) => const ReturnScreen(),
  // 'categoriesPage': (context) => const CategoriesScreen()
};
