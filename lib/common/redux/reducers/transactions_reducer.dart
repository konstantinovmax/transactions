import 'package:redux/redux.dart';
import 'package:transactions/common/redux/actions/transactions_actions.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';

final transactionsReducer = combineReducers<TransactionsState>([
  TypedReducer<TransactionsState, UpdateActiveTab>(_updateActiveTab),
  TypedReducer<TransactionsState, InitializeTransactions>(
    _initializeTransactions,
  ),
  TypedReducer<TransactionsState, AddTransaction>(_addTransaction),
  TypedReducer<TransactionsState, RemoveTransaction>(_removeTransaction),
]);

TransactionsState _updateActiveTab(
  TransactionsState state,
  UpdateActiveTab action,
) {
  return TransactionsState(
    activeTab: action.index,
    transactions: state.transactions,
  );
}

TransactionsState _initializeTransactions(
  TransactionsState state,
  InitializeTransactions action,
) {
  return TransactionsState(
    activeTab: state.activeTab,
    transactions: action.transactions,
  );
}

TransactionsState _addTransaction(
  TransactionsState state,
  AddTransaction action,
) {
  return TransactionsState(
    activeTab: state.activeTab,
    transactions: List.from(state.transactions)..add(action.transaction),
  );
}

TransactionsState _removeTransaction(
  TransactionsState state,
  RemoveTransaction action,
) {
  return TransactionsState(
    activeTab: state.activeTab,
    transactions: List.from(state.transactions)
      ..removeAt(action.transactionIndex),
  );
}
