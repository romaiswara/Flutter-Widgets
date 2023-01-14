import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';

class DialogCustomScreen extends StatelessWidget {
  const DialogCustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Basic Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Single Choice Dialog'),
              onPressed: () {
                showSingleChoiceDialog(context);
              },
            ),
            ElevatedButton(
              child: const Text('Multiple Choice Dialog'),
              onPressed: () {
                showMultipleChoiceDialog(context);
              },
            ),
            ElevatedButton(
              child: const Text('Custom Info Dialog'),
              onPressed: () {
                showInfoDialog(context);
              },
            ),
            ElevatedButton(
              child: const Text('Custom Warning Dialog'),
              onPressed: () {
                showWarningDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void showSingleChoiceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const SingleChoiceDialog(),
    );
  }

  void showMultipleChoiceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const MultiChoiceDialog(),
    );
  }

  void showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const CustomDialog(
        title: 'Account confirmed!',
        iconData: Icons.verified_user,
        color: Colors.lightGreen,
        description: StringConstant.middleLoremIpsum,
        textButton: 'Get Started',
      ),
    );
  }

  void showWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const CustomDialog(
        title: 'No Internet!',
        iconData: Icons.cloud_off,
        color: Colors.red,
        description: StringConstant.middleLoremIpsum,
        textButton: 'Try Again',
      ),
    );
  }
}

class SingleChoiceDialog extends StatefulWidget {
  const SingleChoiceDialog({Key? key}) : super(key: key);

  @override
  State<SingleChoiceDialog> createState() => _SingleChoiceDialogState();
}

class _SingleChoiceDialogState extends State<SingleChoiceDialog> {
  String selectedCategory = "None";

  List<String> categories = [
    "Education",
    "Movie",
    "Music",
    "Art",
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select One Category"),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          categories.length,
          (index) => RadioListTile<String>(
            title: Text(categories[index]),
            groupValue: selectedCategory,
            selected: selectedCategory == categories[index],
            value: categories[index],
            onChanged: (val) {
              selectedCategory = val!;
              setState(() {});
            },
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Oke'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class MultiChoiceDialog extends StatefulWidget {
  const MultiChoiceDialog({Key? key}) : super(key: key);

  @override
  State<MultiChoiceDialog> createState() => _MultiChoiceDialogState();
}

class _MultiChoiceDialogState extends State<MultiChoiceDialog> {
  List<String> colors = [
    "Red",
    "Green",
    "Blue",
    "Purple",
    "Olive",
  ];

  List<bool> status = [
    false,
    false,
    false,
    false,
    false,
  ];

  bool getValue(String val) {
    int index = colors.indexOf(val);
    if (index == -1) return false;
    return status[index];
  }

  void toggleValue(String name) {
    int index = colors.indexOf(name);
    if (index == -1) return;
    status[index] = !status[index];
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Your prefered color"),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      content: Wrap(
        direction: Axis.vertical,
        children: colors
            .map(
              (c) => InkWell(
                child: Row(
                  children: <Widget>[
                    Checkbox(
                        value: getValue(c),
                        onChanged: (value) {
                          setState(() {
                            toggleValue(c);
                          });
                        }),
                    Text(c),
                  ],
                ),
                onTap: () {
                  setState(() {
                    toggleValue(c);
                  });
                },
              ),
            )
            .toList(),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Oke'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color color;
  final String description;
  final String textButton;

  const CustomDialog({
    Key? key,
    required this.title,
    required this.iconData,
    required this.color,
    required this.description,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: Colors.white,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                // width: double.infinity,
                color: color,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 8),
                    Icon(iconData, color: Colors.white, size: 80),
                    Container(height: 10),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    Container(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 40,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        textButton,
                        style: const TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
