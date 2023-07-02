import 'package:redux/redux.dart';
import 'package:transactions/redux/reducers/app_reducers.dart';
import 'package:transactions/redux/states/app_state.dart';
import 'package:transactions/redux/states/auth_state.dart';

final store = Store<AppState>(
  appReducer,
  initialState: AppState(authState: AuthState(isFormValid: false)),
);
