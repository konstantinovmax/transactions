import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_assets.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';

class TransactionTypeInfo {
  final Color backgroundColor;
  final String icon;
  final String transactionName;
  final TextStyle amountTextStyle;

  TransactionTypeInfo({
    required this.backgroundColor,
    required this.icon,
    required this.transactionName,
    required this.amountTextStyle,
  });
}

TransactionTypeInfo onGetTransactionTypeInfo(
  TransactionType type,
  AppLocalization appLocalization,
) {
  switch (type) {
    case TransactionType.replenishment:
      return TransactionTypeInfo(
        backgroundColor: AppColors.green,
        icon: AppAssets.replenishmentIcon,
        transactionName: appLocalization.replenishment,
        amountTextStyle: AppTextStyles.text17BoldGreen,
      );
    case TransactionType.withdrawal:
      return TransactionTypeInfo(
        backgroundColor: AppColors.red,
        icon: AppAssets.withdrawalIcon,
        transactionName: appLocalization.withdrawal,
        amountTextStyle: AppTextStyles.text17BoldBlackWithOpacity50,
      );
    case TransactionType.transfer:
      return TransactionTypeInfo(
        backgroundColor: AppColors.yellow,
        icon: AppAssets.transferIcon,
        transactionName: appLocalization.transfer,
        amountTextStyle: AppTextStyles.text17BoldBlackWithOpacity50,
      );
    default:
      return TransactionTypeInfo(
        backgroundColor: AppColors.yellow,
        icon: AppAssets.transferIcon,
        transactionName: appLocalization.transfer,
        amountTextStyle: AppTextStyles.text17BoldBlackWithOpacity50,
      );
  }
}
