import 'package:flutter/material.dart';

import '../../model/model.dart';

class TabCollapseScreen extends StatefulWidget {
  const TabCollapseScreen({Key? key}) : super(key: key);

  @override
  State<TabCollapseScreen> createState() => _TabCollapseScreenState();
}

class _TabCollapseScreenState extends State<TabCollapseScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(
      length: TabModel.tabs.length,
      vsync: this,
    );
    _scrollController = ScrollController();
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
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: const Text('Tab Collapse'),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
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
          ];
        },
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
      ),
    );
  }
}
