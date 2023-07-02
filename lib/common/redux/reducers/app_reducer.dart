import 'package:transactions/common/redux/reducers/auth_reducer.dart';
import 'package:transactions/common/redux/reducers/transactions_reducer.dart';
import 'package:transactions/common/redux/states/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    authState: authReducer(state.authState, action),
    transactionsState: transactionsReducer(state.transactionsState, action),
  );
}
