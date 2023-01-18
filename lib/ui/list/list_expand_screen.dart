import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class ListExpandScreen extends StatelessWidget {
  ListExpandScreen({Key? key}) : super(key: key);

  final List<String> _images = List.from(DummyData.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Expand Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          _images.length,
          (index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: ThemeConfig.theme.copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(_images[index]),
                    backgroundColor: ColorConfig.brownLight,
                  ),
                  title: Text(_images[index].split('/').last),
                  children: [
                    const ListTile(
                      title: Text(StringConstant.mediumLoremIpsum),
                    ),
                    TextButton(
                      child: const Text('Edit Description'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
