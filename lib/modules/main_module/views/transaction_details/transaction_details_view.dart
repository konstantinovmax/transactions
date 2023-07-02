import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:transactions/common/components/app_icon_button_widget.dart';
import 'package:transactions/common/components/app_submit_button_widget.dart';
import 'package:transactions/common/redux/actions/transactions_actions.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/utils/app_assets.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_constants.dart';
import 'package:transactions/common/utils/app_sizes.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/main_module/components/transaction_details_row_widget.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';
import 'package:transactions/modules/main_module/models/transaction_type_info.dart';

class TransactionDetailsView extends StatelessWidget {
  final Transaction transaction;

  const TransactionDetailsView({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final dateFormat = DateFormat('HH:mm, dd.MM.yyyy');
    final isPhone =
        MediaQuery.of(context).size.width <= AppConstants.maxPhoneWidth;
    final storeProvider = StoreProvider.of<AppState>(context);
    final transactionDate = dateFormat.format(transaction.date);
    final transactionTypeInfo =
        onGetTransactionTypeInfo(transaction.type, appLocalization);

    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppIconButtonWidget(
          icon: AppAssets.leftArrowIcon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        title: Text(
          appLocalization.transactionDetails,
          style: AppTextStyles.text17BoldGreen,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          isPhone ? AppConstants.phonePadding : AppConstants.tabletPadding,
        ),
        child: Column(
          children: [
            TransactionDetailsRowWidget(
              transactionInfo: '${appLocalization.transactionNumber}:',
              transactionData: transaction.number.toString(),
            ),
            AppSizes.sizedBoxH10,
            TransactionDetailsRowWidget(
              transactionInfo: '${appLocalization.date}:',
              transactionData: transactionDate,
            ),
            AppSizes.sizedBoxH10,
            TransactionDetailsRowWidget(
              transactionInfo: '${appLocalization.amount}:',
              transactionData: '${transaction.amount} \$',
            ),
            AppSizes.sizedBoxH10,
            TransactionDetailsRowWidget(
              transactionInfo: '${appLocalization.fee}:',
              transactionData: '${transaction.fee} %',
            ),
            AppSizes.sizedBoxH10,
            TransactionDetailsRowWidget(
              transactionInfo: '${appLocalization.type}:',
              transactionData: transactionTypeInfo.transactionName,
            ),
            AppSizes.sizedBoxH10,
            TransactionDetailsRowWidget(
              transactionInfo: '${appLocalization.total}:',
              transactionData: '${transaction.total} \$',
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(
          isPhone ? AppConstants.phonePadding : AppConstants.tabletPadding,
        ),
        child: AppSubmitButtonWidget(
          title: appLocalization.cancelTransaction,
          color: AppColors.red,
          onPressed: () {
            storeProvider.dispatch(
              RemoveTransaction(transaction: transaction),
            );

            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
