import 'package:flutter/material.dart';

class ToolbarCollapseScreen extends StatelessWidget {
  const ToolbarCollapseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: false,
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                background: FlutterLogo(),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                PopupMenuButton<String>(
                  onSelected: (String value) {},
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                  ],
                )
              ],
            ),
          ];
        },
        body: const Center(
          child: Text('Hi!'),
        ),
      ),
    );
  }
}
