import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/model/model.dart';

class ExpandBasicScreen extends StatefulWidget {
  const ExpandBasicScreen({Key? key}) : super(key: key);

  @override
  State<ExpandBasicScreen> createState() => _ExpandBasicScreenState();
}

class _ExpandBasicScreenState extends State<ExpandBasicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand Basic Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        children: [
          const Text('Table of contents'),
          const SizedBox(height: 4),
          Column(
            children: List.generate(
              3,
              (index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Theme(
                    data: ThemeConfig.theme.copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text('Part ${index + 1}'),
                      children: List.generate(
                        5,
                        (sub) => ListTile(
                          title: Text('Section ${index + 1}.${sub + 1}'),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Contact'),
          const SizedBox(height: 4),
          Column(
            children: List.generate(
              ProfileModel.profiles.length,
              (index) {
                ProfileModel profile = ProfileModel.profiles[index];
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
        ],
      ),
    );
  }
}
