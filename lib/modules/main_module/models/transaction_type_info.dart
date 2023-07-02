import 'package:flutter/material.dart';

class TransactionTypeInfo {
  final Color backgroundColor;
  final String icon;
  final String transactionName;
  final TextStyle amountTextStyle;

  TransactionTypeInfo({
    required this.backgroundColor,
    required this.icon,
    required this.transactionName,
    required this.amountTextStyle,
  });
}
