import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';

import '../../model/model.dart';
import 'content_widget.dart';

class BottomNavigationShiftingScreen extends StatefulWidget {
  const BottomNavigationShiftingScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationShiftingScreen> createState() =>
      _BottomNavigationShiftingScreenState();
}

class _BottomNavigationShiftingScreenState
    extends State<BottomNavigationShiftingScreen> {
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
        type: BottomNavigationBarType.shifting,
        selectedItemColor: ThemeConfig.theme.primaryColor,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  void onChangeTap(int tab) {
    setState(() {
      currentTab = tab;
    });
  }
}
