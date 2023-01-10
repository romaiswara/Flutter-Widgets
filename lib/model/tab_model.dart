import 'package:flutter/material.dart';

class TabModel {
  final String title;
  final IconData iconData;

  TabModel({
    required this.title,
    required this.iconData,
  });

  static List<TabModel> get tabs => [
        TabModel(title: 'Music', iconData: Icons.music_note),
        TabModel(title: 'Video', iconData: Icons.ondemand_video),
        TabModel(title: 'Book', iconData: Icons.book),
        TabModel(title: 'Games', iconData: Icons.games),
      ];
}
