import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class MenuBasicScreen extends StatelessWidget {
  MenuBasicScreen({Key? key}) : super(key: key);

  final List<String> _images = List.from(DummyData.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Basic Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {},
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: "Search",
                child: Text("Search"),
              ),
              PopupMenuItem(
                value: "Refresh",
                child: Text("Refresh"),
              ),
              PopupMenuItem(
                value: "Settings",
                child: Text("Settings"),
              ),
              PopupMenuItem(
                value: "Send feedback",
                child: Text("Send feedback"),
              ),
              PopupMenuItem(
                value: "Help",
                child: Text("Help"),
              ),
              PopupMenuItem(
                value: "Signout",
                child: Text("Signout"),
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/photo_1.jpg',
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 12,
                      ),
                      child: CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Chaira A",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "chaira@gmail.com",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                leading: const Icon(Icons.home, size: 25.0, color: Colors.grey),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Trending",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                leading:
                    const Icon(Icons.whatshot, size: 25.0, color: Colors.grey),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Latest",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                leading: const Icon(Icons.access_time,
                    size: 25.0, color: Colors.grey),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Highlight",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                leading:
                    const Icon(Icons.highlight, size: 25.0, color: Colors.grey),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                leading:
                    const Icon(Icons.settings, size: 25.0, color: Colors.grey),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Help",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                leading: const Icon(Icons.help_outline,
                    size: 25.0, color: Colors.grey),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: ListView(
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
                  PopupMenuButton<String>(
                    offset: const Offset(0, 40),
                    icon: const Icon(Icons.more_vert),
                    onSelected: (String value) {},
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'Preview item ${index + 1}',
                        child: const Text('Preview'),
                      ),
                      PopupMenuItem(
                        value: 'Share item ${index + 1}',
                        child: const Text('Share'),
                      ),
                      PopupMenuItem(
                        value: 'Get link item ${index + 1}',
                        child: const Text('Get link'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
