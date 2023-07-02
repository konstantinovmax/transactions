import 'package:transactions/modules/main_module/models/transaction.dart';

class UpdateActiveTab {
  final int index;

  UpdateActiveTab({required this.index});
}

class InitializeTransactions {
  final List<Transaction> transactions;

  InitializeTransactions({required this.transactions});
}

class AddTransaction {
  final Transaction transaction;

  AddTransaction({required this.transaction});
}

class RemoveTransaction {
  final int transactionIndex;

  RemoveTransaction({required this.transactionIndex});
}
