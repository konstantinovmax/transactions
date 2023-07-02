import 'package:redux/redux.dart';
import 'package:transactions/common/redux/reducers/app_reducer.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/redux/states/auth_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';
import 'package:transactions/modules/main_module/models/transaction.dart';

final store = Store<AppState>(
  appReducer,
  initialState: AppState(
    authState: AuthState(
      isEmailInputValid: false,
      isPasswordInputValid: false,
      isFormValid: false,
    ),
    transactionsState: TransactionsState(
      activeTab: 0,
      transactions: [
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
          amount: 70,
          fee: 5,
          total: 70 + (70 * 5 / 100),
          type: TransactionType.withdrawal,
        ),
        Transaction(
          number: 4,
          date: DateTime.now(),
          amount: 350,
          fee: 5,
          total: 350 + (350 * 5 / 100),
          type: TransactionType.withdrawal,
        ),
      ],
    ),
  ),
);
