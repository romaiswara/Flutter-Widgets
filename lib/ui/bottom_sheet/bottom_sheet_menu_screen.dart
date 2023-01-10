import 'package:flutter/material.dart';
import 'package:flutter_widgets/model/model.dart';

import '../../config/config.dart';

class BottomSheetMenuScreen extends StatelessWidget {
  const BottomSheetMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Bottom Sheet Menu'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeConfig.theme.primaryColor,
        elevation: 1,
        child: Icon(
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
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: List.generate(
            BottomSheetModel.menu.length,
            (index) => Container(
              constraints: const BoxConstraints(
                minHeight: 70,
                minWidth: 70,
                maxHeight: 100,
                maxWidth: 100,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      BottomSheetModel.menu[index].iconData,
                      color: ColorConfig.secondary,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      BottomSheetModel.menu[index].title,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    )
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
