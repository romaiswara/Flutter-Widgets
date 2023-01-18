import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../model/model.dart';
import 'content_widget.dart';

class BottomNavigationPrimaryScreen extends StatefulWidget {
  const BottomNavigationPrimaryScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPrimaryScreen> createState() =>
      _BottomNavigationPrimaryScreenState();
}

class _BottomNavigationPrimaryScreenState
    extends State<BottomNavigationPrimaryScreen> {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeConfig.theme.primaryColor,
        elevation: 1,
        child: const Icon(
          Icons.add,
          color: ColorConfig.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        items: BottomNavBarModel.bottomNavFloating
            .map(
              (bottomNav) => BottomNavigationBarItem(
                icon: Icon(bottomNav.iconData),
                label: bottomNav.title,
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
