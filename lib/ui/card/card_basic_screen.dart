import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';

class CardBasicScreen extends StatelessWidget {
  const CardBasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Basic Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        children: [
          _card1(context),
          const SizedBox(height: 8),
          _card2(
            context,
            title: 'Ini Card',
            path: 'assets/images/photo_2.jpg',
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _card2(
                  context,
                  title: 'Ini Card 1',
                  path: 'assets/images/photo_1.jpg',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _card2(
                  context,
                  title: 'Ini Card 2',
                  path: 'assets/images/photo_2.jpg',
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _card3(context),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _card4(context),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _card5(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _card1(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /// image
          Image.asset(
            'assets/images/photo_1.jpg',
            height: 140,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 8),

          /// title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'a day in my life',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
          ),

          /// desc
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(StringConstant.middleLoremIpsum),
          ),

          /// share & explore button
          Row(
            children: [
              TextButton(
                child: const Text('SHARE'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('EXPLORE'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _card2(
    BuildContext context, {
    required String title,
    required String path,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /// image & title
          Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset(
                path,
                height: 140,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// icon buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey[500],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.grey[500],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.grey[500],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _card3(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: ColorConfig.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "A day in my life",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              StringConstant.mediumLoremIpsum,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[200],
              ),
            ),
            TextButton(
              child: const Text(
                "LISTEN NOW",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _card4(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: ColorConfig.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Aliquet Et Ante \nMorbi",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.5,
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "March 19, 17",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.event, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _card5(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: ColorConfig.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Call",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.call, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Vitae Tortor \nSed",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
