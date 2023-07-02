import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_routes.dart';
import 'package:transactions/common/utils/app_sizes.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';
import 'package:transactions/modules/main_module/models/transaction_type_info.dart';

class TransactionsCardWidget extends StatelessWidget {
  final Transaction transaction;

  const TransactionsCardWidget({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final transactionTypeInfo =
        onGetTransactionTypeInfo(transaction.type, appLocalization);

    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.transactionDetailsRoute,
          arguments: transaction,
        );
      },
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
                '${transaction.total} \$',
                style: transactionTypeInfo.amountTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
