import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';

import '../../model/model.dart';

class BottomNavigationShiftingScreen extends StatefulWidget {
  const BottomNavigationShiftingScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationShiftingScreen> createState() =>
      _BottomNavigationShiftingScreenState();
}

class _BottomNavigationShiftingScreenState
    extends State<BottomNavigationShiftingScreen> {
  late int currentTab;

  final List<String> _listAssetRecommended = [
    'assets/images/food_1.png',
    'assets/images/food_2.png',
  ];

  final List<String> _listAssetNews = [
    'assets/images/cake_1.png',
    'assets/images/cake_2.png',
    'assets/images/cake_3.png',
  ];

  @override
  void initState() {
    currentTab = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            const SizedBox(height: 10),

            /// header & search
            Row(
              children: [
                const Text(
                  'Simple\nLife',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search: Cake',
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
              ],
            ),

            const SizedBox(height: 50),

            /// card recommended
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recommender',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'More',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  _listAssetRecommended.length,
                      (index) => Container(
                    width: 138,
                    margin: EdgeInsets.only(left: index == 0 ? 0 : 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(_listAssetRecommended[index]),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// card new
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'New',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'More',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),

            /// jika bisa d scroll ke samping
            // SizedBox(
            //   height: 60,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: List.generate(
            //       _listAssetNews.length,
            //           (index) => Container(
            //         width: 60,
            //         margin: EdgeInsets.only(left: index == 0 ? 0 : 20),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         child: Image.asset(_listAssetNews[index]),
            //       ),
            //     ),
            //   ),
            // ),

            /// static 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                _listAssetNews.length,
                    (index) => Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: index == 0 ? 0 : 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(_listAssetNews[index]),
                ),
              ),
            )
          ],
        ),
      ),
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
