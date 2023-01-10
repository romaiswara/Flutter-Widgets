import 'package:flutter/material.dart';

import '../../model/model.dart';

class TabBasicScreen extends StatefulWidget {
  const TabBasicScreen({Key? key}) : super(key: key);

  @override
  State<TabBasicScreen> createState() => _TabBasicScreenState();
}

class _TabBasicScreenState extends State<TabBasicScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: TabModel.tabs.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Basic Screen'),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 2,
          tabs: TabModel.tabs
              .map(
                (tab) => Tab(
                  child: Text(tab.title),
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: TabModel.tabs
            .map(
              (tab) => Center(
                child: Text('Section ${tab.title}'),
              ),
            )
            .toList(),
      ),
    );
  }
}
