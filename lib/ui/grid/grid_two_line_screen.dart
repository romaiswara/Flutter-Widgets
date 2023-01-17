import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/color_config.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class GridTwoLineScreen extends StatelessWidget {
  GridTwoLineScreen({Key? key}) : super(key: key);

  final List<String> _allImages = List.from(DummyData.photos)..shuffle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Two Line Screen'),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
          _allImages.length,
          (index) => Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.asset(
                  _allImages[index],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: ColorConfig.primary,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Minimalist ${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(height: 2),
                          const Text(
                            '14 Jan 2023',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
