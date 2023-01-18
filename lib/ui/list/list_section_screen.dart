import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class ListSectionScreen extends StatefulWidget {
  const ListSectionScreen({Key? key}) : super(key: key);

  @override
  State<ListSectionScreen> createState() => _ListSectionScreenState();
}

class _ListSectionScreenState extends State<ListSectionScreen> {
  final List<String> _images = List.from(DummyData.photos);

  final List<String> months = ['Jan', 'Feb', 'Mar', 'Apr'];

  final List<String> allImagesWithMonth = [];

  bool isSection(String value) => months.contains(value);

  @override
  void initState() {
    allImagesWithMonth.addAll(_images);

    /// add month
    int sectionIndex = 0;
    for (int i = 0; i < months.length; i++) {
      allImagesWithMonth.insert(sectionIndex, months[i]);
      sectionIndex = sectionIndex + 5;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Section Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          allImagesWithMonth.length,
          (index) => isSection(allImagesWithMonth[index])
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    allImagesWithMonth[index],
                    style: Theme.of(context).textTheme.headline5,
                  ),
                )
              : Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            allImagesWithMonth[index],
                          ),
                          backgroundColor: ColorConfig.brownLight,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                allImagesWithMonth[index].split('/').last,
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
    );
  }
}
