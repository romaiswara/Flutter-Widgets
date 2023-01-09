import 'package:flutter/material.dart';

import '../config/config.dart';

class BottomNavBarModel {
  final String title;
  final IconData iconData;
  final Color? activeColor;
  final Color? backgroundColor;

  BottomNavBarModel({
    required this.title,
    required this.iconData,
    this.activeColor,
    this.backgroundColor,
  });

  static List<BottomNavBarModel> get bottomNav => [
        BottomNavBarModel(
          title: 'Home',
          iconData: Icons.home,
          activeColor: ThemeConfig.theme.primaryColor,
        ),
        BottomNavBarModel(
          title: 'Cart',
          iconData: Icons.shopping_cart,
          activeColor: ThemeConfig.theme.primaryColor,
        ),
        BottomNavBarModel(
          title: 'Profile',
          iconData: Icons.person,
          activeColor: ThemeConfig.theme.primaryColor,
        ),
      ];

  static List<BottomNavBarModel> get bottomNavFloating => [
        BottomNavBarModel(
          title: 'Home',
          iconData: Icons.home,
          activeColor: ThemeConfig.theme.primaryColor,
        ),
        BottomNavBarModel(
          title: 'Profile',
          iconData: Icons.person,
          activeColor: ThemeConfig.theme.primaryColor,
        ),
      ];
}
