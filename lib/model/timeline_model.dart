import 'package:flutter_widgets/constant/constant.dart';

class TimelineModel {
  final String name;
  final String profile;
  final String time;
  final String image;
  final String title;
  final String description;
  final String likes;
  final List<CommentModel> comments;

  TimelineModel({
    required this.name,
    required this.profile,
    required this.time,
    required this.image,
    required this.title,
    required this.description,
    required this.likes,
    required this.comments,
  });

  static List<TimelineModel> get timelines => [
        TimelineModel(
          name: 'Chaira A',
          profile: 'assets/images/profile.png',
          time: 'January 1, 2023',
          image: 'assets/images/photo_1.jpg',
          title: 'Sarapan pagi dengan sebuah roti',
          description: StringConstant.shortLoremIpsum,
          likes: '2,670 likes',
          comments: [],
        ),
        TimelineModel(
          name: 'Chaira A',
          profile: 'assets/images/profile.png',
          time: 'January 15, 2023',
          image: 'assets/images/photo_2.jpg',
          title: 'Sarapan pagi dengan sebuah roti',
          description: StringConstant.middleLoremIpsum,
          likes: '10,884 likes',
          comments: [
            CommentModel(
              image: 'assets/images/people_1.jpg',
              name: 'Steven',
              description: StringConstant.mediumLoremIpsum,
            ),
            CommentModel(
              image: 'assets/images/people_2.jpg',
              name: 'Angel',
              description: StringConstant.mediumLoremIpsum,
            ),
            CommentModel(
              image: 'assets/images/people_2.jpg',
              name: 'Angel',
              description: StringConstant.shortLoremIpsum,
            ),
          ],
        ),
      ];
}

class CommentModel {
  final String image;
  final String name;
  final String description;

  CommentModel({
    required this.image,
    required this.name,
    required this.description,
  });
}
