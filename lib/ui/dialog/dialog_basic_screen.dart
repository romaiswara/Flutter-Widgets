import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';

class DialogBasicScreen extends StatelessWidget {
  const DialogBasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Basic Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Alert Dialog'),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
            ElevatedButton(
              child: const Text('Cupertino Alert Dialog'),
              onPressed: () {
                showCupertinoAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Are you sure ?"),
          content: const Text(StringConstant.middleLoremIpsum),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            )
          ],
        );
      },
    );
  }

  void showCupertinoAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text("Are you sure ?"),
            content: const Text(StringConstant.middleLoremIpsum),
            actions: <Widget>[
              TextButton(
                child: const Text('No'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: ColorConfig.primary,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Yes'),
              )
            ],
          );
        });
  }
}
