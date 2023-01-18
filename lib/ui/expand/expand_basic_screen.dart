import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';

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
        children: List.generate(
          10,
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
    );
  }
}
