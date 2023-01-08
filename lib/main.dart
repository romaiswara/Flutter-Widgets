import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Material Widget',
      onGenerateRoute: RouteConfig.onGenerateRoute,
      initialRoute: RouteName.main,
      theme: ThemeConfig.theme,
    );
  }
}
