import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transactions/common/utils/app_assets.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_sizes.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';
import 'package:transactions/modules/main_module/models/transaction_type_info.dart';

class TransactionsCardWidget extends StatelessWidget {
  final Transaction transaction;

  const TransactionsCardWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final transactionTypeInfo =
        getTransactionTypeInfo(transaction.type, appLocalization);

    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 10 / 2,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            color: transactionTypeInfo.backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGrey.withOpacity(0.7),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        transactionTypeInfo.icon,
                        colorFilter: ColorFilter.mode(
                          AppColors.black.withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                        width: 25.0,
                        height: 25.0,
                      ),
                    ),
                  ),
                  AppSizes.sizedBoxW10,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.number.toString(),
                        style: AppTextStyles.text15RegularGreen,
                      ),
                      Text(
                        transactionTypeInfo.transactionName,
                        style: AppTextStyles.text15RegularBlackWithOpacity30,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                transaction.total.toString(),
                style: transactionTypeInfo.amountTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TransactionTypeInfo getTransactionTypeInfo(
    TransactionType type,
    AppLocalization appLocalization,
  ) {
    switch (type) {
      case TransactionType.replenishment:
        return TransactionTypeInfo(
          backgroundColor: AppColors.lightGreen.withOpacity(0.1),
          icon: AppAssets.replenishmentIcon,
          transactionName: appLocalization.replenishment,
          amountTextStyle: AppTextStyles.text17BoldGreen,
        );
      case TransactionType.withdrawal:
        return TransactionTypeInfo(
          backgroundColor: AppColors.red.withOpacity(0.03),
          icon: AppAssets.withdrawalIcon,
          transactionName: appLocalization.withdrawal,
          amountTextStyle: AppTextStyles.text17BoldBlackWithOpacity50,
        );
      case TransactionType.transfer:
        return TransactionTypeInfo(
          backgroundColor: AppColors.yellow.withOpacity(0.05),
          icon: AppAssets.transferIcon,
          transactionName: appLocalization.transfer,
          amountTextStyle: AppTextStyles.text17BoldBlackWithOpacity50,
        );
      default:
        return TransactionTypeInfo(
          backgroundColor: AppColors.yellow.withOpacity(0.05),
          icon: AppAssets.transferIcon,
          transactionName: appLocalization.transfer,
          amountTextStyle: AppTextStyles.text17BoldBlackWithOpacity50,
        );
    }
  }
}
