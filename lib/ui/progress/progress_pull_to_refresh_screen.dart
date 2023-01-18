import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class ProgressPullToRefreshScreen extends StatefulWidget {
  const ProgressPullToRefreshScreen({Key? key}) : super(key: key);

  @override
  State<ProgressPullToRefreshScreen> createState() =>
      _ProgressPullToRefreshScreenState();
}

class _ProgressPullToRefreshScreenState
    extends State<ProgressPullToRefreshScreen> {
  final List<String> _images = List.from(DummyData.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Pull To Refresh Screen'),
      ),
      body: RefreshIndicator(
        onRefresh: onPullRefresh,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: List.generate(
            _images.length,
            (index) => Card(
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
                          const SizedBox(height: 4),
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
                    const SizedBox(width: 8),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onPullRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    _images.clear();
    _images.addAll(List.from(DummyData.photos)..shuffle());
    setState(() {});
  }
}
