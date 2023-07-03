import 'package:transactions/modules/main_module/models/transaction.dart';

class AppMocks {
  static final transactions = <Transaction>[
    Transaction(
      number: 1,
      date: DateTime.now(),
      amount: 100,
      fee: 5,
      total: 100 + (100 * 5 / 100),
      type: TransactionType.replenishment,
    ),
    Transaction(
      number: 2,
      date: DateTime.now(),
      amount: 50,
      fee: 5,
      total: 50 + (50 * 5 / 100),
      type: TransactionType.transfer,
    ),
    Transaction(
      number: 3,
      date: DateTime.now(),
      amount: 254,
      fee: 5,
      total: 254 + (254 * 5 / 100),
      type: TransactionType.replenishment,
    ),
    Transaction(
      number: 4,
      date: DateTime.now(),
      amount: 70,
      fee: 5,
      total: 70 + (70 * 5 / 100),
      type: TransactionType.withdrawal,
    ),
    Transaction(
      number: 5,
      date: DateTime.now(),
      amount: 350,
      fee: 5,
      total: 350 + (350 * 5 / 100),
      type: TransactionType.withdrawal,
    ),
  ];
}
