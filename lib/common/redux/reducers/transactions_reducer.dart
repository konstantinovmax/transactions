import 'package:redux/redux.dart';
import 'package:transactions/common/redux/actions/transactions_actions.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';

final transactionsReducer = combineReducers<TransactionsState>([
  TypedReducer<TransactionsState, UpdateActiveTab>(_updateActiveTab),
]);

TransactionsState _updateActiveTab(
  TransactionsState state,
  UpdateActiveTab action,
) {
  return TransactionsState(activeTab: action.index);
}
