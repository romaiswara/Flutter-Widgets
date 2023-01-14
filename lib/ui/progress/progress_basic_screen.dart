import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';

class ProgressBasicScreen extends StatefulWidget {
  const ProgressBasicScreen({Key? key}) : super(key: key);

  @override
  State<ProgressBasicScreen> createState() => _ProgressBasicScreenState();
}

class _ProgressBasicScreenState extends State<ProgressBasicScreen> {
  double _progressValue = 0;

  @override
  void initState() {
    updateProgress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proggress Basic Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Linear Progress',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            const Text('Indetermine'),
            const SizedBox(height: 8),
            SizedBox(
              height: 5,
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(ColorConfig.primary),
                backgroundColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 12),
            const Text('Determine'),
            const SizedBox(height: 8),
            SizedBox(
              height: 5,
              child: LinearProgressIndicator(
                value: _progressValue,
                valueColor: AlwaysStoppedAnimation<Color>(ColorConfig.primary),
                backgroundColor: Colors.grey[300],
              ),
            ),
            const Divider(thickness: 1, height: 40),
            const Text(
              'Circular Progress',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    const Text("Indetermine"),
                    const SizedBox(height: 8),
                    CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(ColorConfig.primary),
                      backgroundColor: Colors.grey[300],
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Column(
                  children: <Widget>[
                    const Text("Determine"),
                    const SizedBox(height: 8),
                    CircularProgressIndicator(
                      value: _progressValue,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(ColorConfig.primary),
                      backgroundColor: Colors.grey[300],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateProgress() {
    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        _progressValue += 0.2;
        // we "finish" downloading here
        if (_progressValue > 1.0) {
          _progressValue = 0.0;
        }
      });
    });
  }
}
