import 'package:flutter/material.dart';
import 'package:transactions/modules/splash_screen_module/components/animated_logo_widget.dart';
import 'package:transactions/utils/app_colors.dart';
import 'package:transactions/utils/app_routes.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> transitionElementFromRight;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    transitionElementFromRight =
        Tween(begin: 400.0, end: 0.0).animate(animationController);
    animationController
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.authRoute,
            (route) => false,
          );
        }
      });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return AnimatedLogoWidget(
              offsetValue: transitionElementFromRight.value,
            );
          },
        ),
      ),
    );
  }
}
