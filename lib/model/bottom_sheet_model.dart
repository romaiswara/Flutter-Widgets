import 'package:flutter/material.dart';

class BottomSheetModel {
  final String title;
  final IconData iconData;

  BottomSheetModel({
    required this.title,
    required this.iconData,
  });

  static List<BottomSheetModel> get list => [
    BottomSheetModel(
      title: 'Preview',
      iconData: Icons.visibility,
    ),
    BottomSheetModel(
      title: 'Share',
      iconData: Icons.person_add,
    ),
    BottomSheetModel(
      title: 'Get link',
      iconData: Icons.link,
    ),
    BottomSheetModel(
      title: 'Make a copy',
      iconData: Icons.content_copy,
    ),
  ];

  static List<BottomSheetModel> get menu => [
    BottomSheetModel(
      title: 'Search',
      iconData: Icons.search,
    ),
    BottomSheetModel(
      title: 'Shop',
      iconData: Icons.shopping_bag,
    ),
    BottomSheetModel(
      title: 'Notification',
      iconData: Icons.notifications,
    ),
    BottomSheetModel(
      title: 'Download',
      iconData: Icons.move_to_inbox,
    ),
    BottomSheetModel(
      title: 'Favorite',
      iconData: Icons.favorite_border,
    ),
    BottomSheetModel(
      title: 'All Tags',
      iconData: Icons.tab,
    ),
    BottomSheetModel(
      title: 'Category',
      iconData: Icons.dns,
    ),
    BottomSheetModel(
      title: 'Settings',
      iconData: Icons.settings,
    ),
    BottomSheetModel(
      title: 'More Apps',
      iconData: Icons.widgets,
    ),
    BottomSheetModel(
      title: 'About',
      iconData: Icons.error_outline,
    ),
  ];
}
