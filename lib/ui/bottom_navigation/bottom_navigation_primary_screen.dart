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

  final List<String> _listProduct = [
    'assets/images/product_5.png',
    'assets/images/product_6.png',
  ];

  @override
  void initState() {
    currentTab = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          /// header
          SizedBox(
            height: 113 + MediaQuery.of(context).padding.top,
            child: Image.asset(
              'assets/images/product_7.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'How to be Minimalist',
                hintStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
                fillColor: ColorConfig.primary,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          /// body
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Aesthetic'),
                    Text('White'),
                    Text('Simper'),
                  ],
                ),
                const SizedBox(height: 30),
                const Text('More', textAlign: TextAlign.end),
                const SizedBox(height: 8),
                Row(
                  children: List.generate(
                    _listProduct.length,
                    (index) => Container(
                      margin: EdgeInsets.only(left: index == 0 ? 0 : 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(_listProduct[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
