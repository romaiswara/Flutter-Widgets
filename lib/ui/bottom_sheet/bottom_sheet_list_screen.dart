import 'package:flutter/material.dart';
import 'package:flutter_widgets/model/model.dart';

import '../../config/config.dart';

class BottomSheetListScreen extends StatelessWidget {
  const BottomSheetListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet List Screen'),
      ),
      body: const Center(
        child: Text(
          'Press button below',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.black45,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeConfig.theme.primaryColor,
        elevation: 1,
        child: const Icon(
          Icons.arrow_upward,
          color: ColorConfig.white,
        ),
        onPressed: () {
          showBottomSheet(context);
        },
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        color: ColorConfig.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Wrap(
          children: List.generate(
            BottomSheetModel.list.length,
            (index) => ListTile(
              leading: Icon(BottomSheetModel.list[index].iconData),
              title: Text(BottomSheetModel.list[index].title),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
