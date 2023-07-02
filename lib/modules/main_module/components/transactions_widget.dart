import 'package:flutter/material.dart';
import 'package:transactions/modules/main_module/components/transactions_card_widget.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TransactionsCardWidget(),
        ],
      ),
    );
  }
}
