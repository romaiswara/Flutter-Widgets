import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class GridSingleLineScreen extends StatelessWidget {
  GridSingleLineScreen({Key? key}) : super(key: key);

  final List<String> _allImages = List.from(DummyData.photos)..shuffle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Single Line Screen'),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
          _allImages.length,
          (index) => Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset(
                _allImages[index],
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'img_${index + 1}.jpg',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.info,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
