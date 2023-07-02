import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_text_styles.dart';

class TransactionDetailsRowWidget extends StatelessWidget {
  final String transactionInfo;
  final String transactionData;

  const TransactionDetailsRowWidget({
    super.key,
    required this.transactionInfo,
    required this.transactionData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          transactionInfo,
          style: AppTextStyles.text17BoldBlackWithOpacity50,
        ),
        Text(
          transactionData,
          style: AppTextStyles.text17RegularBlackWithOpacity50,
        ),
      ],
    );
  }
}
