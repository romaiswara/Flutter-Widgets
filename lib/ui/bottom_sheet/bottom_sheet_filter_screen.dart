import 'package:flutter/material.dart';

import '../../config/config.dart';

class BottomSheetFilterScreen extends StatelessWidget {
  const BottomSheetFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Bottom Sheet Filter'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeConfig.theme.primaryColor,
        elevation: 1,
        child: Icon(
          Icons.arrow_upward,
          color: ColorConfig.white,
        ),
        onPressed: () {
          showBottomSheet(context);
        },
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Filter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            dropdownMenu(
              label: 'Sort by',
              values: ['Relevance', 'Upload date', 'View count', 'Rating'],
            ),
            const SizedBox(height: 8),
            dropdownMenu(
              label: 'Type',
              values: ['All', 'Video', 'Channel', 'Playlist', 'Movie'],
            ),
            const SizedBox(height: 8),
            dropdownMenu(
              label: 'Upload date',
              values: [
                'Anytime',
                'Last Hour',
                'Today',
                'This week',
                'This month',
                'This year'
              ],
            ),
            const SizedBox(height: 8),
            dropdownMenu(
              label: 'Duration',
              values: [
                'Any',
                'Under 4 minutes',
                '4 - 20 minutes',
                'Over 20 minutes'
              ],
            ),
            const Divider(
              thickness: 1,
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Apply"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dropdownMenu({
    required String label,
    required List<String> values,
  }) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(label),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: values.first,
              items: values
                  .map(
                    (val) => DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    ),
                  )
                  .toList(),
              onChanged: (String? val) {},
              isExpanded: true,
            ),
          ),
        ),
      ],
    );
  }
}
