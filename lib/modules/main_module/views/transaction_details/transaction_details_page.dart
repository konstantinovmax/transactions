import 'package:flutter/material.dart';
import 'package:transactions/modules/main_module/views/transaction_details/transaction_details_view.dart';

class TransactionDetailsPage extends StatelessWidget {
  const TransactionDetailsPage({super.key});

  static Route route() {
    return MaterialPageRoute<Widget>(
      builder: (context) => const TransactionDetailsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const TransactionDetailsView();
  }
}
