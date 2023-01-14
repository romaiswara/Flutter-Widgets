import 'dart:core';

class ProfileModel {
  final String name;
  final String image;
  final String email;

  ProfileModel({
    required this.name,
    required this.image,
    required this.email,
  });

  static List<ProfileModel> get profiles => [
        ProfileModel(
          name: 'Chaira',
          image: 'assets/images/profile.png',
          email: 'chaira@gmail.com',
        ),
        ProfileModel(
          name: 'Steven',
          image: 'assets/images/people_1.jpeg',
          email: 'steven@gmail.com',
        ),
        ProfileModel(
          name: 'Angel',
          image: 'assets/images/people_2.jpeg',
          email: 'angel@gmail.com',
        ),
      ];
}
