import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_text_styles.dart';

class AppTitleWidget extends StatelessWidget {
  final String title;

  const AppTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.text20RegularGreen,
      textAlign: TextAlign.start,
    );
  }
}
