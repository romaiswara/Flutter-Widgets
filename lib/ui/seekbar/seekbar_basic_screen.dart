import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/color_config.dart';

class SeekbarBasicScreen extends StatefulWidget {
  const SeekbarBasicScreen({Key? key}) : super(key: key);

  @override
  State<SeekbarBasicScreen> createState() => _SeekbarBasicScreenState();
}

class _SeekbarBasicScreenState extends State<SeekbarBasicScreen> {
  double value1 = 0.7;
  double value2 = 0.3;
  double value3 = 66;
  double value4 = 25;

  void setValue1(double value) => setState(() => value1 = value);

  void setValue2(double value) => setState(() => value2 = value);

  void setValue3(double value) => setState(() => value3 = value);

  void setValue4(double value) => setState(() => value4 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seekbar Basic'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
              thumbColor: ColorConfig.primary,
              trackHeight: 2,
              activeTrackColor: ColorConfig.primary,
              thumbShape: thumbShape,
            ),
            child: Slider(
              value: value1,
              onChanged: setValue1,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: ColorConfig.secondary,
              trackHeight: 2,
              activeTrackColor: ColorConfig.secondary,
              thumbShape: thumbShape,
            ),
            child: Slider(
              value: value2,
              onChanged: setValue2,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: ColorConfig.primary,
              trackHeight: 2,
              activeTrackColor: ColorConfig.primary,
              thumbShape: thumbShape,
            ),
            child: Slider(
              value: value3,
              onChanged: setValue3,
              divisions: 3,
              min: 0,
              max: 100,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: ColorConfig.secondary,
              trackHeight: 2,
              activeTrackColor: ColorConfig.secondary,
              thumbShape: thumbShape,
            ),
            child: Slider(
              value: value4,
              onChanged: setValue4,
              divisions: 4,
              min: 0,
              max: 100,
            ),
          ),
        ],
      ),
    );
  }

  SliderComponentShape get thumbShape => const RoundSliderThumbShape(
        enabledThumbRadius: 4,
      );
}
