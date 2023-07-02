import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_constants.dart';

class TransactionsChartWidget extends StatelessWidget {
  const TransactionsChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isPhone =
        MediaQuery.of(context).size.width <= AppConstants.maxPhoneWidth;

    return Padding(
      padding: EdgeInsets.all(
        isPhone ? AppConstants.phonePadding : AppConstants.tabletPadding,
      ),
      child: const Center(
        child: PieChart(
          dataMap: <String, double>{
            'Flutter': 5,
          },
          chartType: ChartType.ring,
          baseChartColor: AppColors.grey,
          colorList: <Color>[
            Colors.greenAccent,
          ],
          chartValuesOptions: ChartValuesOptions(
            showChartValuesInPercentage: true,
          ),
          totalValue: 20,
        ),
      ),
    );
  }
}
