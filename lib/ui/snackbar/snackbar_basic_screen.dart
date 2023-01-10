import 'package:flutter/material.dart';

class SnackbarBasicScreen extends StatelessWidget {
  const SnackbarBasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Simple Snackbar"),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: const Text('Simple'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Snackbar With Action"),
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Back',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text('With Action'),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Snackbar With Action"),
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Save',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Save Clicked!"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: const Text('With Action Indefinite'),
            ),
          ],
        ),
      ),
    );
  }
}
