import 'package:flutter/material.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';
import 'package:transactions/modules/main_module/views/transaction_details/transaction_details_view.dart';

class TransactionDetailsPage extends StatelessWidget {
  static Route route(Transaction transaction) {
    return MaterialPageRoute<Widget>(
      builder: (context) => TransactionDetailsPage(transaction: transaction),
    );
  }

  final Transaction transaction;

  const TransactionDetailsPage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return TransactionDetailsView(transaction: transaction);
  }
}
