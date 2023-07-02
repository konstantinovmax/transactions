import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';

class TransactionsAppBarTitleWidget extends StatelessWidget {
  const TransactionsAppBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);

    return Column(
      children: [
        Text(
          appLocalization.total,
          style: AppTextStyles.text15BoldBlackWithOpacity30,
        ),
        Text(
          '15 600',
          style: AppTextStyles.text20BoldGreen,
        ),
      ],
    );
  }
}
