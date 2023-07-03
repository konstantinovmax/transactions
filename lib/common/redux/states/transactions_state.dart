import 'package:transactions/modules/main_module/models/transaction.dart';

class TransactionsState {
  final int activeTab;
  final List<Transaction> transactions;

  TransactionsState({
    required this.activeTab,
    required this.transactions,
  });

  TransactionsState copyWith({
    required int activeTab,
    required List<Transaction> transactions,
  }) {
    return TransactionsState(
      activeTab: activeTab,
      transactions: transactions,
    );
  }
}
