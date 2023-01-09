import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../model/model.dart';

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
      body: const Center(
        child: Text('Bottom Navigation Primary'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeConfig.theme.primaryColor,
        elevation: 1,
        child: Icon(
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
        selectedItemColor: ThemeConfig.theme.primaryColor,
        unselectedItemColor: ThemeConfig.theme.primaryColor,
      ),
    );
  }

  void onChangeTap(int tab) {
    setState(() {
      currentTab = tab;
    });
  }
}
