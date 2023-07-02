import 'package:flutter/material.dart';
import 'package:transactions/modules/splash_screen_module/views/splash_screen/splash_screen_view.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  static Route route() {
    return MaterialPageRoute<Widget>(
      builder: (context) => const SplashScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreenView();
  }
}
