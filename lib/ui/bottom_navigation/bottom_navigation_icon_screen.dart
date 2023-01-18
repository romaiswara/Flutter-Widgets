import 'package:flutter/material.dart';

import '../../model/model.dart';
import 'content_widget.dart';

class BottomNavigationIconScreen extends StatefulWidget {
  const BottomNavigationIconScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationIconScreen> createState() =>
      _BottomNavigationIconScreenState();
}

class _BottomNavigationIconScreenState
    extends State<BottomNavigationIconScreen> {
  late int currentTab;

  @override
  void initState() {
    currentTab = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        items: BottomNavBarModel.bottomNav
            .map(
              (bottomNav) => BottomNavigationBarItem(
                icon: Icon(bottomNav.iconData),
                label: bottomNav.title,
                activeIcon: Icon(
                  bottomNav.iconData,
                  color: bottomNav.activeColor,
                ),
              ),
            )
            .toList(),
        onTap: (tab) {
          onChangeTap(tab);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  void onChangeTap(int tab) {
    setState(() {
      currentTab = tab;
    });
  }
}
