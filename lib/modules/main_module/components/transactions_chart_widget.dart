import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_constants.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';
import 'package:transactions/modules/main_module/models/transaction_type_info.dart';

class TransactionsChartWidget extends StatelessWidget {
  const TransactionsChartWidget({super.key});

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
        converter: (store) => store.state.transactionsState,
        builder: (context, transactionsState) {
          if (transactionsState.transactions.isEmpty) {
            return SizedBox(
              height: mediaQuery.size.height / 1.5,
              child: Center(
                child: Text(
                  appLocalization.dataIsNotAvailable,
                  style: AppTextStyles.text17RegularBlackWithOpacity50,
                ),
              ),
            );
          }

          final transactionMap = transactionsState.transactions
              .fold(<TransactionType, double>{}, (map, transaction) {
            final total = map[transaction.type] ?? 0.0;
            map[transaction.type] = total + transaction.total;

            return map;
          });
          final totalAmount =
              transactionMap.values.reduce((value, element) => value + element);

          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: PieChart(
              dataMap: transactionMap.map(
                (key, value) => MapEntry(
                  onGetTransactionTypeInfo(key, appLocalization)
                      .transactionName,
                  value,
                ),
              ),
              chartType: ChartType.ring,
              baseChartColor: AppColors.grey,
              colorList: transactionMap.keys
                  .map((key) => onGetTransactionTypeInfo(key, appLocalization)
                      .backgroundColor)
                  .toList(),
              chartValuesOptions: ChartValuesOptions(
                chartValueStyle: AppTextStyles.text15RegularBlackWithOpacity70,
              ),
              legendOptions: LegendOptions(
                legendPosition: LegendPosition.bottom,
                legendTextStyle: AppTextStyles.text15RegularBlackWithOpacity70,
              ),
              chartLegendSpacing: 70.0,
              totalValue: totalAmount,
            ),
          );
        },
      ),
    );
  }
}
