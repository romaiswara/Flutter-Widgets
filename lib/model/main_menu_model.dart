import 'package:flutter/material.dart';

import '../constant/constant.dart';

class MainMenuModel {
  final int id;
  final String title;
  final List<SubMenu> subMenus;
  final IconData iconData;
  final bool isExpand;

  MainMenuModel({
    required this.id,
    required this.title,
    required this.subMenus,
    required this.iconData,
    this.isExpand = false,
  });

  static List<MainMenuModel> get allMenus {
    return [
      MainMenuModel(
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
      MainMenuModel(
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
      MainMenuModel(
        id: 2,
        title: AppConstant.button,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.buttonBasic,
          ),
        ],
        iconData: Icons.touch_app,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.card,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.cardBasic,
          ),
          SubMenu(
            name: AppConstant.timeline,
            routeName: RouteName.cardTimeline,
          ),
          SubMenu(
            name: AppConstant.overlap,
            routeName: RouteName.cardOverlap,
          ),
        ],
        iconData: Icons.note,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.chip,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.chipBasic,
          ),
        ],
        iconData: Icons.label,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.expand,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.expandBasic,
          ),
          SubMenu(
            name: AppConstant.ticket,
            routeName: RouteName.expandTicket,
          ),
        ],
        iconData: Icons.arrow_downward,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.grid,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.gridBasic,
          ),
          SubMenu(
            name: AppConstant.singleLine,
            routeName: RouteName.gridSingleLine,
          ),
          SubMenu(
            name: AppConstant.twoLine,
            routeName: RouteName.gridTwoLine,
          ),
        ],
        iconData: Icons.apps,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.picker,
        subMenus: [
          SubMenu(
            name: AppConstant.dateAndTime,
            routeName: RouteName.pickerDateTime,
          ),
        ],
        iconData: Icons.event,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.progress,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.progressBasic,
          ),
          SubMenu(
            name: AppConstant.pullToRefresh,
            routeName: RouteName.progressPullToRefresh,
          ),
        ],
        iconData: Icons.settings_backup_restore,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.seekbar,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.seekbarBasic,
          ),
        ],
        iconData: Icons.tune,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.snackbar,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.snackbarBasic,
          ),
        ],
        iconData: Icons.wb_iridescent,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.tab,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.tabBasic,
          ),
          SubMenu(
            name: AppConstant.icon,
            routeName: RouteName.tabIcon,
          ),
          SubMenu(
            name: AppConstant.textIcon,
            routeName: RouteName.tabTextAndIcon,
          ),
          SubMenu(
            name: AppConstant.collapse,
            routeName: RouteName.tabCollapse,
          ),
        ],
        iconData: Icons.tab,
      ),
      MainMenuModel(
        id: 2,
        title: AppConstant.toolbar,
        subMenus: [
          SubMenu(
            name: AppConstant.basic,
            routeName: RouteName.toolbarBasic,
          ),
          SubMenu(
            name: AppConstant.collapse,
            routeName: RouteName.toolbarCollapse,
          ),
          SubMenu(
            name: AppConstant.collapseAndPin,
            routeName: RouteName.toolbarCollapseAndPin,
          ),
        ],
        iconData: Icons.web_asset,
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
