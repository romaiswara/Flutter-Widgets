import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/model/model.dart';

class ListSectionScreen extends StatefulWidget {
  const ListSectionScreen({Key? key}) : super(key: key);

  @override
  State<ListSectionScreen> createState() => _ListSectionScreenState();
}

class _ListSectionScreenState extends State<ListSectionScreen> {
  final List<ProfileModel> _listProfiles = ProfileModel.liverpoolProfiles;

  final List<String> _position = ['GK', 'DEF', 'MID', 'FWD'];

  final List<ProfileSection> _listProfileSections = [];

  @override
  void initState() {
    for (String pos in _position) {
      /// add section
      _listProfileSections.add(
        ProfileSection(section: true, position: pos),
      );

      ///  add player on this position
      _listProfileSections.addAll(
        _listProfiles
            .where((element) => element.position == pos)
            .map((e) => ProfileSection(section: false, profileModel: e))
            .toList(),
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Section Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: List.generate(
          _listProfileSections.length,
          (index) => _listProfileSections[index].section
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _listProfileSections[index].position!,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                )
              : Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              _listProfileSections[index].profileModel!.image),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                _listProfileSections[index].profileModel!.name,
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
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class ProfileSection {
  final bool section;
  final String? position;
  final ProfileModel? profileModel;

  ProfileSection({
    required this.section,
    this.position,
    this.profileModel,
  });
}
