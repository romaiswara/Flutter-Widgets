import 'package:flutter/material.dart';
import 'package:flutter_widgets/model/model.dart';

import 'content_widget.dart';

class BottomNavigationBasicScreen extends StatefulWidget {
  const BottomNavigationBasicScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBasicScreen> createState() =>
      _BottomNavigationBasicScreenState();
}

class _BottomNavigationBasicScreenState
    extends State<BottomNavigationBasicScreen> {
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
      ),
    );
  }

  void onChangeTap(int tab) {
    setState(() {
      currentTab = tab;
    });
  }
}
