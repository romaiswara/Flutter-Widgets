import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';
import 'package:flutter_widgets/model/model.dart';

class ListDraggableScreen extends StatefulWidget {
  const ListDraggableScreen({Key? key}) : super(key: key);

  @override
  State<ListDraggableScreen> createState() => _ListDraggableScreenState();
}

class _ListDraggableScreenState extends State<ListDraggableScreen> {
  final List<ProfileModel> _listProfiles = ProfileModel.liverpoolProfiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Draggable Screen'),
      ),
      body: ReorderableListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        onReorder: (int oldIndex, int newIndex) {
          if (newIndex > oldIndex) newIndex -= 1;
          final ProfileModel item = _listProfiles.removeAt(oldIndex);
          _listProfiles.insert(newIndex, item);
          setState(() {});
        },
        children: List.generate(
          _listProfiles.length,
          (index) => Card(
            key: Key('$index'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(_listProfiles[index].image),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          _listProfiles[index].name,
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
