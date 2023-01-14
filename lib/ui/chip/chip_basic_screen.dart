import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/color_config.dart';

class ChipBasicScreen extends StatefulWidget {
  const ChipBasicScreen({Key? key}) : super(key: key);

  @override
  State<ChipBasicScreen> createState() => _ChipBasicScreenState();
}

class _ChipBasicScreenState extends State<ChipBasicScreen> {
  final List<String> _category = [
    'Education',
    'Movie',
    'Music',
    'Book',
    'Art',
  ];

  final List<String> _selectedCategory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip Basic Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Chip'),
          const SizedBox(height: 4),
          const Chip(
            label: Text('Default'),
            labelPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Input Chip'),
          const SizedBox(height: 4),
          InputChip(
            label: const Text('chaira@gmail.com'),
            labelPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            avatar: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            onDeleted: () {},
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Filter Chip'),
          const SizedBox(height: 4),
          Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(
              _category.length,
              (index) {
                String category = _category[index];
                return Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 0 : 12,
                  ),
                  child: FilterChip(
                    label: Text(category),
                    labelPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    selected: _selectedCategory.contains(category),
                    onSelected: (val) {
                      if (val) {
                        _selectedCategory.add(category);
                      } else {
                        _selectedCategory.remove(category);
                      }
                      setState(() {});
                    },
                    selectedColor: ColorConfig.primary,
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
