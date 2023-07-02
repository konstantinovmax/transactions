class Transaction {
  final int number;
  final DateTime date;
  final double amount;
  final double fee;
  final double total;
  final TransactionType type;

  Transaction({
    required this.number,
    required this.date,
    required this.amount,
    required this.fee,
    required this.total,
    required this.type,
  });
}

enum TransactionType { replenishment, withdrawal, transfer }
