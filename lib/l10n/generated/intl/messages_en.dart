// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "cancelTransaction":
            MessageLookupByLibrary.simpleMessage("Cancel transaction"),
        "chart": MessageLookupByLibrary.simpleMessage("Chart"),
        "checkYourTransactions":
            MessageLookupByLibrary.simpleMessage("Check your transactions"),
        "dataIsNotAvailable":
            MessageLookupByLibrary.simpleMessage("Data is not available"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "fee": MessageLookupByLibrary.simpleMessage("Fee"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "replenishment": MessageLookupByLibrary.simpleMessage("Replenishment"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "theTransactionListIsEmpty": MessageLookupByLibrary.simpleMessage(
            "The transaction list is empty"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalTransactionsAmount":
            MessageLookupByLibrary.simpleMessage("Total transactions amount"),
        "transactionDetails":
            MessageLookupByLibrary.simpleMessage("Transaction details"),
        "transactionNumber":
            MessageLookupByLibrary.simpleMessage("Transaction number"),
        "transactions": MessageLookupByLibrary.simpleMessage("Transactions"),
        "transfer": MessageLookupByLibrary.simpleMessage("Transfer"),
        "type": MessageLookupByLibrary.simpleMessage("Type"),
        "withdrawal": MessageLookupByLibrary.simpleMessage("Withdrawal")
      };
}
