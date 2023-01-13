import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../model/model.dart';

class BottomNavigationIconScreen extends StatefulWidget {
  const BottomNavigationIconScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationIconScreen> createState() =>
      _BottomNavigationIconScreenState();
}

class _BottomNavigationIconScreenState
    extends State<BottomNavigationIconScreen> {
  late int currentTab;

  /// Todo: using grid
  // final List<String> _listProduct = [
  //   'assets/images/product_1.png',
  //   'assets/images/product_2.png',
  //   'assets/images/product_3.png',
  //   'assets/images/product_4.png',
  // ];

  final List<String> _listProduct1 = [
    'assets/images/product_1.png',
    'assets/images/product_2.png',
  ];

  final List<String> _listProduct2 = [
    'assets/images/product_3.png',
    'assets/images/product_4.png',
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
                      hintText: 'Search: Minimalist',
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
                    'white',
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
                    'brown',
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
                    'pastel',
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

            /// card product
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

            /// Todo: using grid
            // GridView.count(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 45,
            //   mainAxisSpacing: 32,
            //   children: List.generate(
            //     _listProduct.length,
            //     (index) => Container(
            //       height: 100,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       child: Image.asset(_listProduct[index]),
            //     ),
            //   ),
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _listProduct1.length,
                (index) => Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 0 : 20,
                      right: index != 0 ? 0 : 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      _listProduct1[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _listProduct2.length,
                (index) => Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 0 : 20,
                      right: index != 0 ? 0 : 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      _listProduct2[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
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
