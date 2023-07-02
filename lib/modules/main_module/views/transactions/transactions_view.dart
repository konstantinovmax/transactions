import 'package:flutter/material.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/utils/app_colors.dart';
import 'package:transactions/utils/app_sizes.dart';
import 'package:transactions/utils/app_text_styles.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);

    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          appLocalization.transactions,
          style: AppTextStyles.text20BoldGreen,
        ),
      ),
      body: const Column(
        children: [
          AppSizes.sizedBox0,
        ],
      ),
    );
  }
}
