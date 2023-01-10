import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';

class ButtonBasicScreen extends StatelessWidget {
  const ButtonBasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Basic'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          const Text('Elevated Button'),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ElevatedButton(
                onPressed: null,
                child: Text('Disable'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConfig.primary,
                ),
                child: const Text('Primary'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConfig.secondary,
                ),
                child: const Text('Secondary'),
              ),
            ],
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Outlined Button'),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const OutlinedButton(
                onPressed: null,
                child: Text('Disable'),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: ColorConfig.primary,
                  side: BorderSide(
                    width: 1,
                    color: ColorConfig.primary,
                  ),
                ),
                child: const Text('Primary'),
              ),
              const SizedBox(width: 8),
              OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: ColorConfig.secondary,
                  side: BorderSide(
                    width: 1,
                    color: ColorConfig.secondary,
                  ),
                ),
                child: const Text('Secondary'),
              ),
            ],
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Text Button'),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TextButton(
                onPressed: null,
                child: Text('Disable'),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: ColorConfig.primary,
                ),
                child: const Text('Primary'),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: ColorConfig.secondary,
                ),
                child: const Text('Secondary'),
              ),
            ],
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Icon Button'),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const IconButton(
                onPressed: null,
                icon: Icon(Icons.touch_app),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.touch_app),
                color: ColorConfig.primary,
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.touch_app),
                color: ColorConfig.secondary,
              ),
            ],
          ),
          const Divider(thickness: 1, height: 24),
          const Text('Floating Action Button'),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.touch_app),
              ),
              const SizedBox(width: 8),
              FloatingActionButton(
                onPressed: () {},
                foregroundColor: ColorConfig.white,
                backgroundColor: ColorConfig.primary,
                child: const Icon(Icons.touch_app),
              ),
              const SizedBox(width: 8),
              FloatingActionButton(
                onPressed: () {},
                foregroundColor: ColorConfig.white,
                backgroundColor: ColorConfig.secondary,
                child: const Icon(Icons.touch_app),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
