import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class ListSwipeScreen extends StatefulWidget {
  const ListSwipeScreen({Key? key}) : super(key: key);

  @override
  State<ListSwipeScreen> createState() => _ListSwipeScreenState();
}

class _ListSwipeScreenState extends State<ListSwipeScreen> {
  final List<String> _images = List.from(DummyData.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Swipe Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          _images.length,
          (index) => Dismissible(
            direction: DismissDirection.endToStart,
            key: Key('$index-${_images[index]}'),
            onDismissed: (direction) {
              _images.removeAt(index);
              setState(() {});
            },
            background: Container(color: ColorConfig.primary),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(_images[index]),
                      backgroundColor: ColorConfig.brownLight,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            _images[index].split('/').last,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.grey[900],
                            ),
                          ),
                          Text(
                            StringConstant.shortLoremIpsum,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
