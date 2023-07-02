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
          fee: 10,
          total: 110,
          type: TransactionType.replenishment,
        ),
        Transaction(
          number: 2,
          date: DateTime.now(),
          amount: 50,
          fee: 5,
          total: 55,
          type: TransactionType.transfer,
        ),
        Transaction(
          number: 3,
          date: DateTime.now(),
          amount: 70,
          fee: 7,
          total: 77,
          type: TransactionType.withdrawal,
        ),
        Transaction(
          number: 4,
          date: DateTime.now(),
          amount: 350,
          fee: 35,
          total: 385,
          type: TransactionType.withdrawal,
        ),
      ],
    ),
  ),
);
