import 'package:flutter/material.dart';

import '../../model/model.dart';
import 'content_widget.dart';

class TabIconScreen extends StatefulWidget {
  const TabIconScreen({Key? key}) : super(key: key);

  @override
  State<TabIconScreen> createState() => _TabIconScreenState();
}

class _TabIconScreenState extends State<TabIconScreen>
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
        title: const Text('Tab Icon Screen'),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 2,
          tabs: TabModel.tabs
              .map(
                (tab) => Tab(
                  icon: Icon(tab.iconData),
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: TabModel.tabs.map((tab) => ContentWidget()).toList(),
      ),
    );
  }
}
