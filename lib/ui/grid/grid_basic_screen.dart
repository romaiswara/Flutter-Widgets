import 'package:flutter/material.dart';

class GridBasicScreen extends StatelessWidget {
  GridBasicScreen({Key? key}) : super(key: key);

  final List<String> _allImages = [
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
    'assets/images/photo_1.jpg',
    'assets/images/photo_2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Basic Screen'),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
          _allImages.length,
          (index) => Image.asset(
            _allImages[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
