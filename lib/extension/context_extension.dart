import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  TextStyle? textButton({required Color color}) =>
      Theme.of(this).textTheme.button?.copyWith(color: color);
}
