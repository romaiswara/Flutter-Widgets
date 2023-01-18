import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/data/dummy_data.dart';

class ContentWidget extends StatelessWidget {
  ContentWidget({Key? key}) : super(key: key);

  final List<String> newReleases = List.from(DummyData.photos)..shuffle();
  final List<String> recommended = List.from(DummyData.photos)..shuffle();
  final List<String> topRated = List.from(DummyData.photos)..shuffle();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: [
        /// new release. show 2 image using row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'New Release',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'MORE',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: List.generate(
            2,
            (index) => Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 4),
                child: _photoWidget(
                  photo: newReleases[index],
                  height: 180,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// card recommended. show 3 image using row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Recommended',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'MORE',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            3,
            (index) => Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 4),
                child: _photoWidget(
                  photo: recommended[index],
                  height: 180,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// card top rated. show 4 image using grid
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Top Rated',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'MORE',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          children: List.generate(
            2,
            (index) => _photoWidget(
              photo: topRated[index],
            ),
          ),
        ),
      ],
    );
  }

  Widget _photoWidget({required String photo, double? height}) {
    return SizedBox(
      height: height,
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                photo,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          photo.split('/').last,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          StringConstant.shortLoremIpsum,
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
