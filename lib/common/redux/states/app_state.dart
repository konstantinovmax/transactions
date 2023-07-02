import 'package:transactions/common/redux/states/auth_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';

class AppState {
  final AuthState authState;
  final TransactionsState transactionsState;

  AppState({
    required this.authState,
    required this.transactionsState,
  });
}
