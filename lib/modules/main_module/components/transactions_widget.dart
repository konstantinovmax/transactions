import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';
import 'package:transactions/common/redux/store.dart';
import 'package:transactions/common/utils/app_constants.dart';
import 'package:transactions/common/utils/app_sizes.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/main_module/components/transactions_card_widget.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final mediaQuery = MediaQuery.of(context);
    final isPhone = mediaQuery.size.width <= AppConstants.maxPhoneWidth;

    return SingleChildScrollView(
      padding: EdgeInsets.all(
        isPhone ? AppConstants.phonePadding : AppConstants.tabletPadding,
      ),
      child: StoreConnector<AppState, TransactionsState>(
        converter: (state) => store.state.transactionsState,
        builder: (context, transactionsState) {
          if (transactionsState.transactions.isEmpty) {
            return SizedBox(
              height: mediaQuery.size.height / 1.5,
              child: Center(
                child: Text(
                  appLocalization.theTransactionListIsEmpty,
                  style: AppTextStyles.text17RegularBlackWithOpacity50,
                ),
              ),
            );
          }

          return ListView.separated(
            primary: false,
            itemCount: transactionsState.transactions.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SizedBox(
                width: isPhone ? null : AppConstants.formWidthOnTablets,
                child: TransactionsCardWidget(
                  transaction: transactionsState.transactions[index],
                ),
              );
            },
            separatorBuilder: (context, index) => AppSizes.sizedBoxH10,
          );
        },
      ),
    );
  }
}
