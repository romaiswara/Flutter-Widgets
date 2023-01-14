import 'dart:core';

class ProfileModel {
  final String name;
  final String image;
  final String email;
  final String? position;

  ProfileModel({
    required this.name,
    required this.image,
    required this.email,
    this.position,
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

  static List<ProfileModel> get liverpoolProfiles => [
        ProfileModel(
          name: 'Allison',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'GK',
        ),
        ProfileModel(
          name: 'Joe Gomez',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'DEF',
        ),
        ProfileModel(
          name: 'Virgil Van Dijk',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'DEF',
        ),
        ProfileModel(
          name: 'Andrew Robertson',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'DEF',
        ),
        ProfileModel(
          name: 'Trent Alexander-Arnold',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'DEF',
        ),
        ProfileModel(
          name: 'Jordan Henderson',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'MID',
        ),
        ProfileModel(
          name: 'Harvey Elliot',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'MID',
        ),
        ProfileModel(
          name: 'Fabio Carvalho',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'MID',
        ),
        ProfileModel(
          name: 'Mohammed Salah',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'FWD',
        ),
        ProfileModel(
          name: 'Diogo Jota',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'FWD',
        ),
        ProfileModel(
          name: 'Darwin Nunez',
          image: 'assets/images/no_profile.png',
          email: '',
          position: 'FWD',
        ),
      ];
}
