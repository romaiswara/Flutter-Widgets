import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../ui/ui.dart';

class RouteConfig {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case RouteName.main:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
      case RouteName.bottomNavBasic:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBasicScreen(),
        );
      case RouteName.bottomNavPrimary:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationPrimaryScreen(),
        );
      case RouteName.bottomNavIcon:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationIconScreen(),
        );
      case RouteName.bottomNavShifting:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationShiftingScreen(),
        );
      case RouteName.bottomSheetBasic:
        return MaterialPageRoute(
          builder: (_) => const BottomSheetBasicScreen(),
        );
      case RouteName.bottomSheetFilter:
        return MaterialPageRoute(
          builder: (_) => const BottomSheetFilterScreen(),
        );
      case RouteName.bottomSheetList:
        return MaterialPageRoute(
          builder: (_) => const BottomSheetListScreen(),
        );
      case RouteName.bottomSheetMenu:
        return MaterialPageRoute(
          builder: (_) => const BottomSheetMenuScreen(),
        );
      case RouteName.buttonBasic:
        return MaterialPageRoute(
          builder: (_) => const ButtonBasicScreen(),
        );
      case RouteName.pickerDateTime:
        return MaterialPageRoute(
          builder: (_) => const PickerDateAndTimeScreen(),
        );
      case RouteName.seekbarBasic:
        return MaterialPageRoute(
          builder: (_) => const SeekbarBasicScreen(),
        );
      case RouteName.snackbarBasic:
        return MaterialPageRoute(
          builder: (_) => const SnackbarBasicScreen(),
        );
      case RouteName.tabBasic:
        return MaterialPageRoute(
          builder: (_) => const TabBasicScreen(),
        );
      case RouteName.tabIcon:
        return MaterialPageRoute(
          builder: (_) => const TabIconScreen(),
        );
      case RouteName.tabTextAndIcon:
        return MaterialPageRoute(
          builder: (_) => const TabTextAndIconScreen(),
        );
      case RouteName.tabCollapse:
        return MaterialPageRoute(
          builder: (_) => const TabCollapseScreen(),
        );
      case RouteName.toolbarBasic:
        return MaterialPageRoute(
          builder: (_) => const ToolbarBasicScreen(),
        );
      case RouteName.toolbarCollapse:
        return MaterialPageRoute(
          builder: (_) => const ToolbarCollapseScreen(),
        );
      case RouteName.toolbarCollapseAndPin:
        return MaterialPageRoute(
          builder: (_) => const ToolbarCollapseAndPinScreen(),
        );
      case RouteName.cardBasic:
        return MaterialPageRoute(
          builder: (_) => const CardBasicScreen(),
        );
      case RouteName.cardTimeline:
        return MaterialPageRoute(
          builder: (_) => const CardTimelineScreen(),
        );
      case RouteName.cardOverlap:
        return MaterialPageRoute(
          builder: (_) => const CardOverlapScreen(),
        );
      case RouteName.chipBasic:
        return MaterialPageRoute(
          builder: (_) => const ChipBasicScreen(),
        );
      case RouteName.expandBasic:
        return MaterialPageRoute(
          builder: (_) => const ExpandBasicScreen(),
        );
      case RouteName.expandTicket:
        return MaterialPageRoute(
          builder: (_) => const ExpandTicketScreen(),
        );
      case RouteName.gridBasic:
        return MaterialPageRoute(
          builder: (_) => GridBasicScreen(),
        );
      case RouteName.gridSingleLine:
        return MaterialPageRoute(
          builder: (_) => GridSingleLineScreen(),
        );
      case RouteName.gridTwoLine:
        return MaterialPageRoute(
          builder: (_) => GridTwoLineScreen(),
        );
      case RouteName.progressBasic:
        return MaterialPageRoute(
          builder: (_) => const ProgressBasicScreen(),
        );
      case RouteName.progressPullToRefresh:
        return MaterialPageRoute(
          builder: (_) => const ProgressPullToRefreshScreen(),
        );
      case RouteName.dialogBasic:
        return MaterialPageRoute(
          builder: (_) => const DialogBasicScreen(),
        );
      case RouteName.dialogCustom:
        return MaterialPageRoute(
          builder: (_) => const DialogCustomScreen(),
        );
      case RouteName.menuBasic:
        return MaterialPageRoute(
          builder: (_) => MenuBasicScreen(),
        );
      case RouteName.listBasic:
        return MaterialPageRoute(
          builder: (_) => ListBasicScreen(),
        );
      case RouteName.listSection:
        return MaterialPageRoute(
          builder: (_) => const ListSectionScreen(),
        );
      case RouteName.listExpand:
        return MaterialPageRoute(
          builder: (_) => ListExpandScreen(),
        );
      case RouteName.listDraggable:
        return MaterialPageRoute(
          builder: (_) => const ListDraggableScreen(),
        );
      case RouteName.listSwipe:
        return MaterialPageRoute(
          builder: (_) => const ListSwipeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
    }
  }
}
