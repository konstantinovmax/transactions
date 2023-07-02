import 'package:flutter/material.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/utils/app_text_styles.dart';

class AnimatedLogoWidget extends StatelessWidget {
  final double offsetValue;

  const AnimatedLogoWidget({
    super.key,
    required this.offsetValue,
  });

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);

    return Transform.translate(
      offset: Offset(
        offsetValue,
        0.0,
      ),
      child: Text(
        appLocalization.transactions,
        style: AppTextStyles.text30BoldGreen,
      ),
    );
  }
}
