import 'package:flutter/material.dart';

import '../constant/constant.dart';

class MainMenu {
  final int id;
  final String title;
  final List<SubMenu> subMenus;
  final IconData iconData;
  final bool isExpand;

  MainMenu({
    required this.id,
    required this.title,
    required this.subMenus,
    required this.iconData,
    this.isExpand = false,
  });

  static List<MainMenu> get allMenus {
    return [
      MainMenu(
        id: 0,
        title: AppConstant.bottomNav,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.bottomNavBasic,
          ),
          SubMenu(
            name: AppConstant.shifting,
            routeName: RouteName.bottomNavShifting,
          ),
          SubMenu(
            name: AppConstant.icon,
            routeName: RouteName.bottomNavIcon,
          ),
          SubMenu(
            name: AppConstant.primary,
            routeName: RouteName.bottomNavPrimary,
          ),
        ],
        iconData: Icons.view_column,
      ),
      MainMenu(
        id: 1,
        title: AppConstant.bottomSheet,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.bottomSheetBasic,
          ),
          SubMenu(
            name: AppConstant.list,
            routeName: RouteName.bottomSheetList,
          ),
          SubMenu(
            name: AppConstant.menu,
            routeName: RouteName.bottomSheetMenu,
          ),
          SubMenu(
            name: AppConstant.filter,
            routeName: RouteName.bottomSheetFilter,
          ),
        ],
        iconData: Icons.call_to_action,
      ),
      MainMenu(
        id: 2,
        title: AppConstant.button,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.buttonBasic,
          ),
          SubMenu(
            name: AppConstant.fabMiddle,
            routeName: RouteName.buttonFabMiddle,
          ),
          SubMenu(
            name: AppConstant.fabMore,
            routeName: RouteName.buttonFabMore,
          ),
          SubMenu(
            name: AppConstant.fabMoreText,
            routeName: RouteName.buttonFabMoreText,
          ),
        ],
        iconData: Icons.touch_app,
      ),
    ];
  }
}

class SubMenu {
  final String name;
  final String routeName;

  SubMenu({
    required this.name,
    required this.routeName,
  });
}
