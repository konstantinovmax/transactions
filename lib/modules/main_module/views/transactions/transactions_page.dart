import 'package:flutter/material.dart';
import 'package:transactions/modules/main_module/views/transactions/transactions_view.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  static Route route() {
    return MaterialPageRoute<Widget>(
      builder: (context) => const TransactionsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const TransactionsView();
  }
}
