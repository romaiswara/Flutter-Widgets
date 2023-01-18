import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToMainPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset('assets/icons/logo.png'),
        ),
      ),
    );
  }

  void goToMainPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteName.main,
      (route) => false,
    );
  }
}
