import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';

import '../../model/model.dart';

class ProgressPullToRefreshScreen extends StatefulWidget {
  const ProgressPullToRefreshScreen({Key? key}) : super(key: key);

  @override
  State<ProgressPullToRefreshScreen> createState() =>
      _ProgressPullToRefreshScreenState();
}

class _ProgressPullToRefreshScreenState
    extends State<ProgressPullToRefreshScreen> {
  final List<ProfileModel> _listProfiles = ProfileModel.profiles;

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
            _listProfiles.length,
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
                      backgroundImage: AssetImage(_listProfiles[index].image),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            _listProfiles[index].name,
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
                    const Icon(Icons.phone),
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
    _listProfiles.addAll(ProfileModel.liverpoolProfiles);
    setState(() {});
  }
}
