import 'package:redux/redux.dart';
import 'package:transactions/common/redux/reducers/app_reducer.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/redux/states/auth_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';

final store = Store<AppState>(
  appReducer,
  initialState: AppState(
    authState: AuthState(
      isEmailInputValid: false,
      isPasswordInputValid: false,
      isFormValid: false,
    ),
    transactionsState: TransactionsState(activeTab: 0),
  ),
);
