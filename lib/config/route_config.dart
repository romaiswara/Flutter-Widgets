import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../ui/ui.dart';

class RouteConfig {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
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
      case RouteName.seekbarBasic:
        return MaterialPageRoute(
          builder: (_) => const SeekbarBasicScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
    }
  }
}
