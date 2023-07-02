import 'package:redux/redux.dart';
import 'package:transactions/redux/reducers/app_reducer.dart';
import 'package:transactions/redux/states/app_state.dart';
import 'package:transactions/redux/states/auth_state.dart';

final store = Store<AppState>(
  appReducer,
  initialState: AppState(
    authState: AuthState(
      isEmailInputValid: false,
      isPasswordInputValid: false,
      isFormValid: false,
    ),
  ),
);
