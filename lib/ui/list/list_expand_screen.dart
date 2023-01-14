import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/model/model.dart';

class ListExpandScreen extends StatelessWidget {
  ListExpandScreen({Key? key}) : super(key: key);

  final List<ProfileModel> _listProfiles = ProfileModel.liverpoolProfiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Expand Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          _listProfiles.length,
          (index) {
            ProfileModel profile = _listProfiles[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: ThemeConfig.theme.copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(profile.image),
                  ),
                  title: Text(profile.name),
                  children: [
                    const ListTile(
                      title: Text(StringConstant.mediumLoremIpsum),
                    ),
                    TextButton(
                      child: const Text('Send Message'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
