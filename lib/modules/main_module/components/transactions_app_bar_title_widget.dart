import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';

class TransactionsAppBarTitleWidget extends StatelessWidget {
  const TransactionsAppBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);

    return StoreConnector<AppState, TransactionsState>(
      converter: (store) => store.state.transactionsState,
      builder: (context, transactionsState) {
        final total = transactionsState.transactions.fold<double>(
          0,
          (previousValue, transaction) => previousValue + transaction.total,
        );

        return Column(
          children: [
            Text(
              appLocalization.total,
              style: AppTextStyles.text15BoldBlackWithOpacity30,
            ),
            Text(
              '${total.toStringAsFixed(2)} \$',
              style: AppTextStyles.text20BoldGreen,
            ),
          ],
        );
      },
    );
  }
}
