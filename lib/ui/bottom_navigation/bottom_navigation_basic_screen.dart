import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/color_config.dart';
import 'package:flutter_widgets/model/model.dart';

class BottomNavigationBasicScreen extends StatefulWidget {
  const BottomNavigationBasicScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBasicScreen> createState() =>
      _BottomNavigationBasicScreenState();
}

class _BottomNavigationBasicScreenState
    extends State<BottomNavigationBasicScreen> {
  late int currentTab;

  final List<String> _listAssetRecommended = [
    'assets/images/glass_1.png',
    'assets/images/glass_2.png',
  ];

  final List<String> _listAssetNews = [
    'assets/images/food_drink_1.png',
    'assets/images/food_drink_2.png',
    'assets/images/food_drink_3.png',
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
                      hintText: 'Search',
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

            const SizedBox(height: 30),

            /// menu with button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Choose',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'More',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Drink',
                    style: TextStyle(
                      color: ColorConfig.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Cake',
                    style: TextStyle(
                      color: ColorConfig.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Snack',
                    style: TextStyle(
                      color: ColorConfig.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

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
        backgroundColor: ColorConfig.secondary,
        unselectedItemColor: ColorConfig.black,
        currentIndex: currentTab,
        items: BottomNavBarModel.bottomNav
            .map(
              (bottomNav) => BottomNavigationBarItem(
                icon: Icon(bottomNav.iconData),
                label: bottomNav.title,
                activeIcon: Icon(
                  bottomNav.iconData,
                  color: bottomNav.activeColor,
                  size: 18,
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
